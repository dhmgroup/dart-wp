part of '../helpers.dart';

/// WooCommerce REST API Credentials
class WooCredentials {
  /// WooCommerce consumer key generate in the WooCommerce dashboard
  final String consumerKey;

  /// WooCommerce consumer secret generate in the WooCommerce dashboard
  final String consumerSecret;

  WooCredentials(this.consumerKey, this.consumerSecret);

  @override
  String toString() {
    return """
    WooCredentials: {
      consumerKey: $consumerKey,
      consumberSecret: $consumerSecret,
    }
    """;
  }
}
