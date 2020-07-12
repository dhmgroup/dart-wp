import 'dart:async';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:wordpress_api/constants.dart';
import 'package:wordpress_api/utils.dart';

// WordPress Respoonse
class WPResponse {
  /// List of
  final dynamic data;
  final Map<String, dynamic> meta;
  final int statusCode;

  WPResponse({
    @required this.data,
    @required this.meta,
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

  WPArgs({
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
  String _namespace = WP_NAMESPACE;

  /// WooCommerce API credentials
  final WooCredentials wooCredentials;
  final Dio _dio = Dio();

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
      Utils.logger.e(e);
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

    if (endpoint.startsWith('/')) {
      // Remove starting '/' if any
      endpoint = endpoint.substring(1);
      Utils.logger.i("ENDPOINT: $endpoint");
    }

    if (url.contains('?') && endpoint.contains('?')) {
      endpoint = endpoint.replaceAll('?', '&');
      // print("ENDPOINT: $endpoint");
    }

    // NAMESPACE DISCOVERY
    if (namespace != null) {
      // CHECK IF NAMESPACE HAS A TRAILING SLASH
      if (namespace.endsWith('/')) {
        _namespace = namespace.substring(0, namespace.length - 1).toLowerCase();
        // print('NAMESPACED LINK: $_link');
      } else {
        _namespace = namespace;
        // print('NAMESPACED LINK: $_link');
      }
    }

    // **********************************************
    // WOOCOMMERCE SETTINGS
    // **********************************************
    // if (isWooCommerce) {
    //   String credentials =
    //       'consumer_key=$consumerKey&consumerSecret=$consumerSecret';
    //   // SET WOOCOMMERCE NAMESPACE
    //   _namespace = WOO_NAMESPACE;
    //   // CHECK IF ENDPOINT HAS A QUERY
    //   if (endpoint.contains('?')) {
    //     _link = '$url$_namespace$endpoint&$credentials';
    //     // print('WC /?: $_link');
    //   } else {
    //     _link = '$url$_namespace$endpoint?$credentials';
    //     // print('WC URL: $_link');
    //   }
    // } else {
    //   _link = '$url$_namespace/$endpoint';
    //   // print('GET LINK: $_link');
    // }

    // _link = '$url$_namespace$endpoint';
    // Utils.logger.i(_link);
    //************ SET BASE URL */
    _dio.options.baseUrl = url;
    try {
      final res = await _dio.get('$_namespace$endpoint', queryParameters: args);
      int total = int.parse(res.headers?.value('x-wp-total'));
      int totalPages = int.parse(res.headers?.value('x-wp-totalpages'));

      return WPResponse(
        data: res.data,
        meta: {
          'total': total,
          'totalPages': totalPages,
        },
        statusCode: res.statusCode,
      );
    } catch (e) {
      Utils.logger.e(e);
      throw Exception(e);
    }
  }

  // **************** WP STANDARD ENDPOINTS ************** //
  // GET CATEGORIES //
  Future<WPResponse> getCategories({Map<String, dynamic> args}) async {
    return await getAsyc(endpoint: 'categories', args: args);
  }

  // **********************************************
  // GET COMMENTS //
  // **********************************************
  Future<WPResponse> getComments({Map<String, dynamic> args}) async {
    return await getAsyc(endpoint: 'comments', args: args);
  }

  // **********************************************
  // GET POSTS //
  // **********************************************
  Future<WPResponse> getPosts({Map<String, dynamic> args}) async {
    return await getAsyc(endpoint: 'posts', args: args);
  }

  //********************* */
  // WP SEARCH
  //********************* */
  Future<WPResponse> search(
    String query, {
    Map<String, dynamic> args,
  }) async {
    return await getAsyc(endpoint: 'search', args: {"search": query});
  }

  // **********************************************
  // GET TAGS //
  // **********************************************
  Future<WPResponse> getTags({Map<String, dynamic> args}) async {
    return await getAsyc(endpoint: 'tags', args: args);
  }

  // ********************************************
  // GET USERS
  // **********************************************
  Future<WPResponse> getUsers({Map<String, dynamic> args}) async {
    return await getAsyc(endpoint: 'users', args: args);
  }

  // **************** WOOCOMMERCE ENDPOINTS | TO DO *************** //
}
