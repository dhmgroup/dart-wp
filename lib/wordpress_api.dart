library wordpress_api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' show Client;

class WordPressAPI {
  String site, _link;
  String _apiNamespace = 'wp/v2';
  final bool isWooCommerce;
  final String consumerKey, consumerSecret;
  final Client _client = Client();

  // Initialization
  WordPressAPI(
    /// [String] WP powered website
    this.site, {

    /// [String] WooCommerce consumer key.
    this.consumerKey = '',

    /// [String] WooCommerce consumer secret.
    this.consumerSecret = '',

    /// [bool] determine whether if the site is a woocommerce site.
    this.isWooCommerce = false,
  });

  // DISCOVER API LINK FROM HEADER
  Future<String> _getLink() async {
    if (!site.startsWith('http')) {
      site = 'http://$site'.toLowerCase();
      // print('SITE: $site');
    }
    final res = await _client.head(site);
    if (res.statusCode == 200) {
      if (res.headers['link'] != null) {
        final links = res.headers['link'].split(';')[0];
        return links.substring(1, links.length - 1);
      } else {
        return '$site/wp-json/';
      }
    } else {
      throw Exception('Failed to get $site json endpoint');
    }
  }

  /// Retrieves data from a given endpoint
  /// The 'data' key contains the raw json data
  /// The 'meta' key is map with two keys, total and totalPages
  Future<Map<String, dynamic>> getAsync(
    String endpoint, {
    String namespace,
  }) async {
    final url = await _getLink();

    if (endpoint.startsWith('/')) {
      endpoint = endpoint.substring(1);
    }

    if (url.contains('?') && endpoint.contains('?')) {
      endpoint = endpoint.replaceAll('?', '&');
    }

    if (namespace != null) {
      // CHECK IF NAMESPACE HAS A TRAILING SLASH
      if (namespace.endsWith('/')) {
        _apiNamespace =
            namespace.substring(0, namespace.length - 1).toLowerCase();
        _link = '$url$_apiNamespace/$endpoint';
        // print('NAMESPACED LINK: $_link');
      } else {
        _apiNamespace = namespace;
        _link = '$url$_apiNamespace/$endpoint';
        // print('NAMESPACED LINK: $_link');
      }
    }

    // WOOCOMMERCE SETTINGS
    if (isWooCommerce) {
      String credentials =
          'consumer_key=$consumerKey&consumer_secret=$consumerSecret';
      // SET WOOCOMMERCE NAMESPACE
      _apiNamespace = 'wc/v3/';
      // CHECK IF ENDPOINT HAS A QUERY
      if (endpoint.contains('?')) {
        _link = '$url$_apiNamespace$endpoint&$credentials';
        // print('WC /?: $_link');
      } else {
        _link = '$url$_apiNamespace$endpoint?$credentials';
        // print('WC URL: $_link');
      }
    } else {
      _link = '$url$_apiNamespace/$endpoint';
      // print('GET LINK: $_link');
    }

    try {
      final res = await _client.get(_link);

      return {
        'data': json.decode(res.body),
        'meta': {
          'total': int.parse(res.headers['x-wp-total']),
          'totalPages': int.parse(res.headers['x-wp-totalpages'])
        },
        'statusCode': res.statusCode
      };
    } catch (e) {
      throw Exception(e);
    }
  }
}
