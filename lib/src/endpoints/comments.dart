part of '../main.dart';

class _Comments {
  WordPressAPI _api;

  _Comments(this._api);

  /// [GET] comments from WP comments endpoint
  ///
  /// `/wp/v2/comments`
  Future get({int? id, Map<String, dynamic>? args}) async {
    if (id != null) {
      final WPResponse res = await _api.get('comments/$id', args: args);
      return Comment.fromMap(res.data);
    }
    final WPResponse res = await _api.get('comments', args: args);
    return parseComments(res.data);
  }
}
