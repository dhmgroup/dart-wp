import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:wordpress_api/src/constants.dart';
import 'package:wordpress_api/src/schemas/category.dart';
import 'package:wordpress_api/src/schemas/comment.dart';
import 'package:wordpress_api/src/schemas/post.dart';
import 'package:wordpress_api/src/schemas/tag.dart';
import 'package:wordpress_api/src/schemas/taxonomy.dart';
import 'package:wordpress_api/src/schemas/user.dart';
import 'package:wordpress_api/src/utils.dart';

// WordPress Respoonse
class WPResponse {
  /// Responses from server which is either List<T> or T
  final dynamic data;

  /// Meta contains meta from responses header. This inludes total number of item ["total"] and the total pages ["totalPages"]
  final Map<String, dynamic> meta;
  final int statusCode;

  WPResponse({
    @required this.data,
    this.meta,
    @required this.statusCode,
  });
}

/// WordPress arguments
class WPArgs {
  ///Scope under which the request is made; determines fields present in response.
  ///
  ///One of: view, embed, edit
  final String context;

  /// Current page of the collection.
  final String page;

  ///Maximum number of items to be returned in result set.
  final String perPage;

  ///Limit results to those matching a string.
  final String search;

  ///Limit response to posts published after a given ISO8601 compliant date.
  final String after;

  ///Limit result set to posts assigned to specific authors.
  final String author;

  ///Ensure result set excludes posts assigned to specific authors.
  final String authorExclude;

  ///Limit response to posts published before a given ISO8601 compliant date.
  final String before;

  ///Ensure result set excludes specific IDs.
  final String exclude;

  ///Limit result set to specific IDs.
  final String include;

  ///Offset the result set by a specific number of items.
  final String offset;

  ///Order sort attribute ascending or descending.
  ///
  ///One of: asc, desc
  final String order;

  ///Sort collection by object attribute.
  ///
  ///One of: author, date, id, include, modified, parent, relevance, slug, include_slugs, title
  final String orderBy;

  ///Limit result set to posts with one or more specific slugs.
  final String slug;

  ///Limit result set to posts assigned one or more statuses.
  final String status;

  ///Limit result set based on relationship between multiple taxonomies.
  ///
  ///One of: AND, OR
  final String taxRelation;

  ///Limit result set to all items that have the specified term assigned in the categories taxonomy.
  final String categories;

  ///Limit result set to all items except those that have the specified term assigned in the categories taxonomy.
  final String categoriesExclude;

  ///Limit result set to all items that have the specified term assigned in the tags taxonomy.
  final String tags;

  ///Limit result set to all items except those that have the specified term assigned in the tags taxonomy.
  final String tagsExclude;

  ///Limit result set to items that are sticky.
  final String sticky;

  /// Whether to hide terms not assigned to any posts.
  final bool hideEmpty;

  const WPArgs({
    this.context,
    this.page,
    this.perPage,
    this.search,
    this.after,
    this.author,
    this.authorExclude,
    this.before,
    this.exclude,
    this.include,
    this.offset,
    this.order,
    this.orderBy,
    this.slug,
    this.status,
    this.taxRelation,
    this.categories,
    this.categoriesExclude,
    this.tags,
    this.tagsExclude,
    this.sticky,
    this.hideEmpty,
  });
}

/// WooCommerce REST API Credentials
class WooCredentials {
  /// WooCommerce consumer key generate in the WooCommerce dashboard
  final String consumerKey;

  /// WooCommerce consumer secret generate in the WooCommerce dashboard
  final String consumerSecret;

  WooCredentials(this.consumerKey, this.consumerSecret);
}

class WordPressAPI {
  /// WordPress website
  String site;
  String _namespace = wpNamespace;
  final Dio _dio = Dio();

  /// WooCommerce API credentials
  final WooCredentials wooCredentials;

  // **********************************************
  // INITIALIZATION
  // **********************************************
  WordPressAPI(
    this.site, {
    this.wooCredentials,
  });

  // **********************************************
  // DISCOVER API LINK FROM HEADERS //
  // **********************************************
  Future<String> _discoverUrl() async {
    if (!site.startsWith('http')) {
      site = 'http://$site'.toLowerCase();
    }
    try {
      final res = await _dio.head(site);

      if (res.headers['link'] != null) {
        final links = res.headers['link'][0].split(';')[0];
        final link = links.substring(1, links.length - 1);
        return link;
      } else {
        return "$site/wp-json/";
      }
    } catch (e) {
      logger.e(e);
      throw Exception(e);
    }
  }

  // ***********************************************************
  // GET DATA FROM CUSTOM ENDPOINT //
  /// Retrieves data from a given endpoint and resturns a [WPResponse]
  // ***********************************************************
  Future<WPResponse> getAsyc({
    @required String endpoint,
    String namespace,
    Map<String, dynamic> args,
  }) async {
    final url = await _discoverUrl();
    String _endpoint = endpoint;

    //***************************** */
    // Remove any starting '/' if any
    //****************************** */
    if (endpoint.startsWith('/')) {
      _endpoint = endpoint.substring(1);
    }

    if (url.contains('?') && endpoint.contains('?')) {
      _endpoint = endpoint.replaceAll('?', '&');
    }
    //********************* */
    // NAMESPACE DISCOVERY
    //******************** */
    if (namespace != null) {
      // CHECK IF NAMESPACE HAS A TRAILING SLASH
      if (namespace.endsWith('/')) {
        _namespace = namespace.substring(0, namespace.length - 1).toLowerCase();
      } else {
        _namespace = namespace;
      }
    }

    //************************
    // SET BASE URL
    //********************** */
    _dio.options.baseUrl = url;

    // **********************************************
    //  SET WOOCOMMERCE CREDENTIALS
    // **********************************************
    if (wooCredentials != null) {
      if (_dio.options.queryParameters == null){
        _dio.options.queryParameters = {};
      }
      _dio.options.queryParameters.addAll({
        "consumer_key": wooCredentials.consumerKey,
        "consumer_secret": wooCredentials.consumerSecret
      });
    }

    //******************************************* */
    // FETCH REQUESTED DATA AND RETURN WP A RESPONSE
    //******************************************* */
    try {
      final res =
          await _dio.get('$_namespace$_endpoint', queryParameters: args);
      final int total = int.parse(res.headers?.value('x-wp-total'));
      final int totalPages = int.parse(res.headers?.value('x-wp-totalpages'));

      return WPResponse(
        data: res.data,
        meta: {
          'total': total,
          'totalPages': totalPages,
        },
        statusCode: res.statusCode,
      );
    } catch (e) {
      logger.e(e);
      throw Exception(e);
    }
  }

  //***************************************************** */
  // **************** WORDPRESS ENDPOINTS ************** //
  //***************************************************** */

  //***************** GET CATEGORIES *******************/
  /// Retrieve WordPress Categories
  Future<List<CategorySchema>> getCategories(
      {Map<String, dynamic> args}) async {
    final res = await getAsyc(endpoint: 'categories', args: args);
    return (res.data as List)
        .cast<Map<String, dynamic>>()
        .map((e) => CategorySchema.fromJson(e))
        .toList();
  }

  // ***************** COMMENTS **********************/
  /// Retrieve WordPress Commments
  Future<List<CommentSchema>> getComments({Map<String, dynamic> args}) async {
    final res = await getAsyc(endpoint: 'comments', args: args);
    return (res.data as List)
        .cast<Map<String, dynamic>>()
        .map((e) => CommentSchema.fromJson(e))
        .toList();
  }

  //********************* POSTS *****************/
  /// Retrieve WordPress Posts
  Future<List<PostSchema>> getPosts({Map<String, dynamic> args}) async {
    final res = await getAsyc(endpoint: 'posts', args: args);
    return (res.data as List)
        .cast<Map<String, dynamic>>()
        .map((e) => PostSchema.fromJson(e))
        .toList();
  }

  //********************* SEARCH *****************/
  /// Perform a WordPress Search (Defaults to posts search)
  Future<WPResponse> search(String query, {Map<String, dynamic> args}) async {
    final res = await getAsyc(
      endpoint: 'search',
      args: {
        "search": query,
      },
    );
    return res;
  }

  // ************************* TAGS ************************** /
  /// Retrieve WordPress Tags
  Future<List<TagSchema>> getTags({Map<String, dynamic> args}) async {
    final res = await getAsyc(endpoint: 'tags', args: args);
    return (res.data as List)
        .cast<Map<String, dynamic>>()
        .map((e) => TagSchema.fromJson(e))
        .toList();
  }

  // ************************* TAXONOMIES ************************** /
  /// Retrieve WordPress Taxonomies
  Future<List<TaxonomySchema>> getTaxonomies(
      {Map<String, dynamic> args}) async {
    final res = await getAsyc(endpoint: 'taxonomies', args: args);
    return (res.data as List)
        .cast<Map<String, dynamic>>()
        .map((e) => TaxonomySchema.fromJson(e))
        .toList();
  }

  // ************************** USERS *********************** /
  /// Retrieve WordPress Users
  Future<List<UserSchema>> getUsers({Map<String, dynamic> args}) async {
    final res = await getAsyc(endpoint: 'users', args: args);
    return (res.data as List)
        .cast<Map<String, dynamic>>()
        .map((e) => UserSchema.fromJson(e))
        .toList();
  }

  //TODO Implements WooCommerce Endpoints
  // **************** WOOCOMMERCE ENDPOINTS | TO DO *************** //
}
