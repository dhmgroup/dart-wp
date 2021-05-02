part of '../main.dart';

class _Posts {
  WordPressAPI _api;

  _Posts(this._api);

  /// `[GET]` posts from WP posts endpoint
  ///
  /// `/wp/v2/posts`
  Future get({int? id, Map<String, dynamic>? args}) async {
    if (id != null) {
      final WPResponse res = await _api.get('posts/$id', args: args);
      return Post.fromMap(res.data);
    }
    final WPResponse res = await _api.get('posts', args: args);
    return parsePosts(res.data);
  }
}
