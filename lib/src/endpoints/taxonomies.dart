part of '../main.dart';

class _Taxonomies {
  WordPressAPI _api;

  _Taxonomies(this._api);

  /// [GET] taxonomies from WP taxonomies endpoint
  ///
  /// `/wp/v2/taxonomies`
  Future get({int? id, Map<String, dynamic>? args}) async {
    if (id != null) {
      final WPResponse res = await _api.get('taxonomies/$id', args: args);
      return Taxonomy.fromMap(res.data);
    }
    final WPResponse res = await _api.get('taxonomies', args: args);
    return parseTaxonomies(res.data);
  }
}
