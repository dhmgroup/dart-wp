part of '../main.dart';

class _Tags {
  WordPressAPI _api;

  _Tags(this._api);

  /// [GET] tags from WP tags endpoint
  ///
  /// `/wp/v2/tags`
  Future get({int? id, Map<String, dynamic>? args}) async {
    if (id != null) {
      final WPResponse res = await _api.get('tags/$id', args: args);
      return Tag.fromMap(res.data);
    }
    final WPResponse res = await _api.get('tags', args: args);
    return parseTags(res.data);
  }
}
