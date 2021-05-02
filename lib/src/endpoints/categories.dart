part of '../main.dart';

class _Categories {
  WordPressAPI _api;

  _Categories(this._api);

  /// [GET] categories from WP categories endpoint
  ///
  /// `/wp/v2/categories`
  Future get({int? id, Map<String, dynamic>? args}) async {
    if (id != null) {
      final WPResponse res = await _api.get('categories/$id', args: args);
      return Category.fromMap(res.data);
    }
    final WPResponse res = await _api.get('categories', args: args);
    return parseCategories(res.data);
  }
}
