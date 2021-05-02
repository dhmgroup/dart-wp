part of '../main.dart';

class _Taxonomies {
  static const String _name = 'taxonomies';
  WordPressAPI _api;

  _Taxonomies(this._api);

  /// [GET] taxonomies from WP taxonomies endpoint
  ///
  /// `/wp/v2/taxonomies`
  Future<WPResponse> fetch({int? id, Map<String, dynamic>? args}) async {
    try {
      if (id != null) {
        final WPResponse res = await _api.fetch('$_name/$id', args: args);
        return WPResponse(
          statusCode: res.statusCode,
          data: Taxonomy.fromMap(res.data),
          meta: res.meta,
        );
      }
      final WPResponse res = await _api.fetch('$_name', args: args);
      return WPResponse(
        statusCode: res.statusCode,
        data: parseTaxonomies(res.data),
        meta: res.meta,
      );
    } catch (e) {
      rethrow;
    }
  }
}
