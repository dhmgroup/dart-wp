part of '../main.dart';

class _Media {
  WordPressAPI _api;

  _Media(this._api);

  /// [GET] media from WP media endpoint
  ///
  /// `/wp/v2/media`
  Future get({int? id, Map<String, dynamic>? args}) async {
    if (id != null) {
      final WPResponse res = await _api.get('media/$id', args: args);
      return Media.fromMap(res.data);
    }
    final WPResponse res = await _api.get('media', args: args);
    return parseMedia(res.data);
  }
}
