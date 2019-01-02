library wordpress_api;

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
    ///
    this.site, {

    /// [String] WooCommerce consumer key.
    this.consumerKey = '',

    /// [String] WooCommerce consumer secret.
    this.consumerSecret = '',

    /// [bool] determine whether if the site is a woocommerce site.
    this.isWooCommerce = false,
  }) {
    if (!site.startsWith('http')) {
      site = 'http://$site'.toLowerCase();
      // print('SITE: $site');
    }
  }

  /// Retrieves data from a given endpoint
  Future<Map<String, dynamic>> getAsync(
    String endpoint, {
    String namespace,
  }) async {
    final url = await _getLink();
    // print('DISCOVERED URL: $url');

    if (endpoint.startsWith('/')) {
      endpoint = endpoint.substring(1);
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

    final res = await _client.get(_link);

    if (res.statusCode == 200) {
      final data = {
        'data': res.body,
        'meta': {
          'total': int.parse(res.headers['x-wp-total']),
          'totalPages': int.parse(res.headers['x-wp-totalpages'])
        },
        'statusCode': 200
      };
      return data;
    } else {
      return {
        'data': null,
        'error': json.decode(res.body),
        'statusCode': res.statusCode,
      };
    }
  }

  // DISCOVER API LINK FROM HEADER
  Future<String> _getLink() async {
    final res = await _client.head(site);
    if (res.statusCode == 200) {
      if (res.headers['link'] != null) {
        final links = res.headers['link'].split(';')[0];
      return links.substring(1, links.length - 1);
      } else {
        return '$site/wp-json/';
      }
      
    } else {
      throw Exception('Failed to get site json endpoint');
    }
  }
}
