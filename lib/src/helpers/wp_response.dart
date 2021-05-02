part of '../helpers.dart';

/// WordPress Repsonse that returns the data, meta and a statusCode
class WPResponse {
  /// Responses from server which is either a [List<T>] or [T]
  final dynamic data;

  /// Meta contains meta from responses header. This inludes total number of item ["total"] and the total pages ["totalPages"]
  final WPMeta? meta;

  /// HTTP Status code
  final int statusCode;

  WPResponse({
    this.data,
    this.meta,
    required this.statusCode,
  });

  @override
  String toString() {
    return """
    $WPResponse: {
      statusCode: $statusCode,
      data: $data,
      meta: $meta,
    }""";
  }
}
