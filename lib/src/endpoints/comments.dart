part of '../main.dart';

class _Comments {
  static const String _name = 'comments';
  WordPressAPI _api;

  _Comments(this._api);

  /// [GET] comments from WP comments endpoint
  ///
  /// `/wp/v2/comments`
  Future<WPResponse> fetch({int? id, Map<String, dynamic>? args}) async {
    try {
      if (id != null) {
        final WPResponse res = await _api.fetch('$_name/$id', args: args);
        return WPResponse(
          statusCode: res.statusCode,
          data: Comment.fromMap(res.data),
          meta: res.meta,
        );
      }
      final WPResponse res = await _api.fetch('$_name', args: args);
      return WPResponse(
        statusCode: res.statusCode,
        data: parseComments(res.data),
        meta: res.meta,
      );
    } catch (e) {
      rethrow;
    }
  }
}
