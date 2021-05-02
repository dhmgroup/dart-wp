part of '../helpers.dart';

/// WordPress response meta obtained from the response header `X-WP-*`
class WPMeta {
  /// The total number of items
  final int? total;

  /// The total number of pages
  final int? totalPages;
  WPMeta({
    this.total,
    this.totalPages,
  });

  @override
  toString() {
    return """
    WPMeta: {
      total: $total,
      totalPages: $totalPages,
    }
    """;
  }
}
