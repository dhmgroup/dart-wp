part of '../main.dart';

class _Pages {
  WordPressAPI _api;

  _Pages(this._api);

  /// [GET] pages from WP pages endpoint
  ///
  /// `/wp/v2/pages`
  Future get({int? id, Map<String, dynamic>? args}) async {
    if (id != null) {
      final WPResponse res = await _api.get('pages/$id', args: args);
      return Page.fromMap(res.data);
    }
    final WPResponse res = await _api.get('pages', args: args);
    return parsePages(res.data);
  }
}
