library wordpress_api;

import 'dart:convert';
import 'package:http/http.dart' show Client;

class WordPressAPI {
  String _site, _link;
  String apiNamespace = 'wp/v2';
  bool hasError = false;
  bool hasData = false;
  final String consumerKey, consumerSecret;
  final Client _client = Client();
  final bool isWooCommerce;

  // Initialization
  WordPressAPI(
    this._site, {
    this.consumerKey = '',
    this.consumerSecret = '',
    this.isWooCommerce = false,
  }) {
    if (!_site.startsWith('http')) {
      _site = 'http://$_site'.toLowerCase();
      print('SITE: $_site');
    }
  }

  /// String endpoint of WP/v2 can any of the default WordPress endpoint
  Future<Map<String, dynamic>> getAsync(
    String endpoint, {
    String namespace = '',
  }) async {
    final url = await _getLink();
    // print('DISCOVERED URL: $url');

    if (endpoint.startsWith('/')) {
      endpoint = endpoint.substring(1);
    }

    if (namespace.isNotEmpty) {
      // CHECK IF NAMESPACE HAS A TRAILING SLASH
      if (namespace.endsWith('/')) {
        apiNamespace =
            namespace.substring(0, namespace.length - 1).toLowerCase();
        _link = '$url$apiNamespace/$endpoint';
        print('NAMESPACED LINK: $_link');
      } else {
        apiNamespace = namespace;
        _link = '$url$apiNamespace/$endpoint';
        print('NAMESPACED LINK: $_link');
      }
    } else {
      _link = '$url$apiNamespace/$endpoint';
      print('GET LINK: $_link');
    }

    if (isWooCommerce) {
      String credentials =
          'consumer_key=$consumerKey&consumer_secret=$consumerSecret';
      // SET WOOCOMMERCE NAMESPACE
      apiNamespace = 'wc/v3/';
      // CHECK IF ENDPOINT HAS A QUERY
      if (endpoint.contains('?')) {
        _link = '$url$apiNamespace$endpoint&$credentials';
        print('WC /?: $_link');
      } else {
        _link = '$url$apiNamespace$endpoint?$credentials';
        print('WC URL: $_link');
      }
    }

    try {
      final res = await _client.get(_link);

      final data = {
        'data': json.decode(res.body),
        'meta': {
          'total': int.parse(res.headers['x-wp-total']),
          'totalPages': int.parse(res.headers['x-wp-totalpages'])
        }
      };
      // TOGGLE HAS ERROR
      hasData = true;
      print('HAS DATA SET TO TRUE');
      return data;
    } on Exception catch (e) {
      throw Exception(e);
    } catch (e) {
      hasError = true;
      print('HAS ERROR SET TO TRUE');
      return {
        'error': {'message': e}
      };
    }
  }

  // DISCOVER API LINK FROM HEADER
  Future<String> _getLink() async {
    try {
      final res = await _client.head(_site);
      final links = res.headers['link'].split(';')[0];
      return links.substring(1, links.length - 1);
    } on Exception catch (e) {
      throw Exception(e);
    } catch (e) {
      throw e;
    }
  }
}
