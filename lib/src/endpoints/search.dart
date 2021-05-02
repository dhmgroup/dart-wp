part of '../main.dart';

class _Search {
  WordPressAPI _api;

  _Search(this._api);

  /// [GET] search results from WP search endpoint
  ///
  /// `/wp/v2/search`
  Future search({int? id, Map<String, dynamic>? args}) async {
    if (id != null) {
      final WPResponse res = await _api.get('search/$id', args: args);
      return Search.fromMap(res.data);
    }
    final WPResponse res = await _api.get('search', args: args);
    return parseSearches(res.data);
  }
}
