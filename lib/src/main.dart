import 'package:dio/dio.dart';
import 'package:wordpress_api/src/constants.dart';
import 'package:wordpress_api/src/helpers.dart';
import 'package:wordpress_api/src/helpers/wp_meta.dart';
import 'package:wordpress_api/src/models.dart';
import 'package:wordpress_api/src/utils.dart';

class WordPressAPI {
  /// WordPress website base url
  String site;

  /// Initialize a custom dio instance.
  ///
  /// Useful if you want to customize `Dio`
  final Dio _dio;

  /// WooCommerce API credentials
  final WooCredentials wooCredentials;

  WordPressAPI(
    this.site, {
    this.wooCredentials,
    Dio dio,
  })  : assert(site != null),
        _dio = dio ?? Dio();

// ***********************************************************
  // GET DATA FROM CUSTOM ENDPOINT //
  /// Retrieves data from a given endpoint and resturns a [WPResponse]
// ***********************************************************
  Future<WPResponse> getAsync(
    /// Provide an API endpoint
    String endpoint, {

    /// REST API namespace
    String namespace = wpNamespace,

    /// Additional wordpress arguments
    Map<String, dynamic> args,
  }) async {
    final url = await _discover(site);

    //***************************** */
    // Remove any starting '/' if any
    //****************************** */
    if (endpoint.startsWith('/')) {
      endpoint = endpoint.substring(1);
    }

    if (url.contains('?') && endpoint.contains('?')) {
      endpoint = endpoint.replaceAll('?', '&');
    }

    //********************* */
    // NAMESPACE DISCOVERY
    //******************** */
    if (namespace != null) {
      // CHECK IF NAMESPACE HAS A TRAILING SLASH
      if (namespace.endsWith('/')) {
        namespace = namespace.substring(0, namespace.length - 1).toLowerCase();
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
      _dio.options.queryParameters ??= {};
      _dio.options.queryParameters.addAll({
        "consumer_key": wooCredentials.consumerKey,
        "consumer_secret": wooCredentials.consumerSecret
      });
    }

    //******************************************* */
    // FETCH REQUESTED DATA AND RETURN WP A RESPONSE
    //******************************************* */
    try {
      int total, totalPages;
      final res = await _dio.get(
        '$namespace/$endpoint',
        queryParameters: args,
      );

      if (res.headers.value('x-wp-total') != null) {
        total = int.tryParse(res.headers?.value('x-wp-total'));
        totalPages = int.tryParse(res.headers?.value('x-wp-totalpages'));
      }

      return WPResponse(
        data: res.data,
        meta: WPMeta(
          total: total,
          totalPages: totalPages,
        ),
        statusCode: res.statusCode,
      );
    } on DioError catch (e) {
      Utils.logger.e(e.message);
      throw e;
    }
  }

  //********************** */
// WORDPRESS ENDPOINTS //
//********************* */

  /// [GET] categories from WP categories endpoint
  ///
  /// `/wp/v2/categories`
  Future getCategories({int id, Map<String, dynamic> args}) async {
    if (id != null) {
      final WPResponse res = await getAsync('categories/$id', args: args);
      return Category.fromMap(res.data);
    }
    final WPResponse res = await getAsync('categories', args: args);
    return parseCategories(res.data);
  }

  /// [GET] comments from WP comments endpoint
  ///
  /// `/wp/v2/comments`
  Future getComments({int id, Map<String, dynamic> args}) async {
    if (id != null) {
      final WPResponse res = await getAsync('comments/$id', args: args);
      return Comment.fromMap(res.data);
    }
    final WPResponse res = await getAsync('comments', args: args);
    return parseComments(res.data);
  }

  /// [GET] media from WP media endpoint
  ///
  /// `/wp/v2/media`
  Future getMedia({int id, Map<String, dynamic> args}) async {
    if (id != null) {
      final WPResponse res = await getAsync('media/$id', args: args);
      return Media.fromMap(res.data);
    }
    final WPResponse res = await getAsync('media', args: args);
    return parseMedia(res.data);
  }

  /// [GET] pages from WP pages endpoint
  ///
  /// `/wp/v2/pages`
  Future getPages({int id, Map<String, dynamic> args}) async {
    if (id != null) {
      final WPResponse res = await getAsync('pages/$id', args: args);
      return Page.fromMap(res.data);
    }
    final WPResponse res = await getAsync('pages', args: args);
    return parsePages(res.data);
  }

  /// [GET] posts from WP posts endpoint
  ///
  /// `/wp/v2/posts`
  Future getPosts({int id, Map<String, dynamic> args}) async {
    if (id != null) {
      final WPResponse res = await getAsync('posts/$id', args: args);
      return Post.fromMap(res.data);
    }
    final WPResponse res = await getAsync('posts', args: args);
    return parsePosts(res.data);
  }

  /// [GET] search results from WP search endpoint
  ///
  /// `/wp/v2/search`
  Future search({int id, Map<String, dynamic> args}) async {
    if (id != null) {
      final WPResponse res = await getAsync('search/$id', args: args);
      return Search.fromMap(res.data);
    }
    final WPResponse res = await getAsync('search', args: args);
    return parseSearches(res.data);
  }

  /// [GET] tags from WP tags endpoint
  ///
  /// `/wp/v2/tags`
  Future getTags({int id, Map<String, dynamic> args}) async {
    if (id != null) {
      final WPResponse res = await getAsync('tags/$id', args: args);
      return Tag.fromMap(res.data);
    }
    final WPResponse res = await getAsync('tags', args: args);
    return parseTags(res.data);
  }

  /// [GET] taxonomies from WP taxonomies endpoint
  ///
  /// `/wp/v2/taxonomies`
  Future getTaxonomies({int id, Map<String, dynamic> args}) async {
    if (id != null) {
      final WPResponse res = await getAsync('taxonomies/$id', args: args);
      return Taxonomy.fromMap(res.data);
    }
    final WPResponse res = await getAsync('taxonomies', args: args);
    return parseTaxonomies(res.data);
  }

  /// [GET] users from WP users endpoint
  ///
  /// `/wp/v2/users`
  Future getUsers({int id, Map<String, dynamic> args}) async {
    if (id != null) {
      final WPResponse res = await getAsync('users/$id', args: args);
      return User.fromMap(res.data);
    }
    final WPResponse res = await getAsync('users', args: args);
    return parseUsers(res.data);
  }

  /// [GET] jobs from WP Job Manager endpoint
  ///
  /// `/wp/v2/job-listings`
  Future getJobs({int id, Map<String, dynamic> args}) async {
    if (id != null) {
      final WPResponse res = await getAsync('job-listings/$id', args: args);
      return Job.fromMap(res.data);
    }
    final WPResponse res = await getAsync('job-listings', args: args);
    return parseJobs(res.data);
  }
}

// Wordpress REST API Discovery from Link Header
Future<String> _discover(String site) async {
  String _site = site;
  final Dio dio = Dio(
    BaseOptions(
      contentType: "application/json",
      headers: {
        "accept": "application/json",
      },
    ),
  );

  if (!site.startsWith('http')) {
    _site = 'http://$site'.toLowerCase();
  }

  try {
    final res = await dio.head(_site);
    // : Change logger to comment. Used only to debug
    // Utils.logger.i("HEADER: ${res.headers}");
    if (res.headers['link'] != null) {
      final link = res.headers['link'].first.split(';').first;
      return link.substring(1, link.length - 1);
    }
    return "$_site/wp-json";
  } catch (e) {
    Utils.logger.e(e);
    throw e;
  }
}
