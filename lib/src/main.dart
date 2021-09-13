import 'package:dio/dio.dart';
import 'package:wordpress_api/src/constants.dart';
import 'package:wordpress_api/src/helpers.dart';
import 'package:wordpress_api/src/models.dart';
import 'package:wordpress_api/src/utils.dart';
part 'endpoints/application_passwords.dart';
part 'endpoints/categories.dart';
part 'endpoints/comments.dart';
part 'endpoints/media.dart';
part 'endpoints/pages.dart';
part 'endpoints/posts.dart';
part 'endpoints/users.dart';
part 'endpoints/taxonomies.dart';
part 'endpoints/tags.dart';
part 'endpoints/job_listings.dart';
part 'endpoints/search.dart';

class WordPressAPI {
  /// WordPress website base url
  String site;

  /// Initialize a custom dio instance.
  ///
  /// Useful if you want to customize `Dio`
  final Dio _dio;

  /// WooCommerce API credentials
  final WooCredentials? wooCredentials;

  WordPressAPI(
    this.site, {
    this.wooCredentials,
    Dio? dio,
  }) : _dio = dio ??= Dio();

  // GET DATA FROM CUSTOM ENDPOINT //
  /// Retrieves data from a given endpoint and resturns a [WPResponse]
  Future<WPResponse> fetch(
    /// Provide an API endpoint
    String endpoint, {

    /// REST API namespace
    String namespace = wpNamespace,

    /// Additional wordpress arguments
    Map<String, dynamic>? args,
  }) async {
    final uri = await _discover(site);

    //***************************** */
    // Remove any starting '/' if any
    //****************************** */
    if (endpoint.startsWith('/')) {
      endpoint = endpoint.substring(1);
    }

    if (uri.contains('?') && endpoint.contains('?')) {
      endpoint = endpoint.replaceAll('?', '&');
    }

    // NAMESPACE DISCOVERY
    // Check if the provided namespace has a trailing `/`
    if (namespace.endsWith('/')) {
      namespace = namespace.substring(0, namespace.length - 1).toLowerCase();
    }

    // Set [Dio] base Url
    _dio.options.baseUrl = uri;

    // **********************************************
    //  SET WOOCOMMERCE CREDENTIALS
    // **********************************************
    if (wooCredentials != null) {
      // _dio.options.queryParameters ??= {};
      _dio.options.queryParameters.addAll({
        "consumer_key": wooCredentials!.consumerKey,
        "consumer_secret": wooCredentials!.consumerSecret
      });
    }

    //******************************************* */
    // FETCH REQUESTED DATA AND RETURN WP A RESPONSE
    //******************************************* */
    try {
      int? total, totalPages;
      final res = await _dio.get(
        '/$namespace/$endpoint',
        queryParameters: args,
      );

      if (res.headers.value('x-wp-total') != null) {
        total = int.tryParse(res.headers.value('x-wp-total')!);
        totalPages = int.tryParse(res.headers.value('x-wp-totalpages')!);
      }

      return WPResponse(
        data: res.data,
        meta: WPMeta(
          total: total,
          totalPages: totalPages,
        ),
        statusCode: res.statusCode!,
      );
    } on DioError catch (e) {
      WPUtils.logger.e(e.message);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

// WP Standard Endpoints

  _ApplicationPasswords get application_passwords =>
      _ApplicationPasswords(this);
  _Posts get posts => _Posts(this);
  _Pages get pages => _Pages(this);
  _Media get media => _Media(this);
  _Categories get categories => _Categories(this);
  _Comments get comments => _Comments(this);
  _Users get users => _Users(this);
  _Search get search => _Search(this);
  _Taxonomies get taxonomies => _Taxonomies(this);
  _Tags get tags => _Tags(this);

// WP Plugins Endpoints
  /// Job Listings endpoints provided by `[WP Job Manager]` plugin
  ///
  /// `/wp/v2/job-listings`
  _JobListings get jobs => _JobListings(this);
}

/// Wordpress `REST API Discovery` from Link Header
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
    // WPUtils.logger.i("HEADER: ${res.headers}");
    if (res.headers['link'] != null) {
      final link = res.headers['link']!.first.split(';').first;
      return link.substring(1, link.length - 1);
    }
    return "$_site/wp-json";
  } catch (e) {
    WPUtils.logger.e(e);
    rethrow;
  }
}
