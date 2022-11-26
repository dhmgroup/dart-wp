part of '../main.dart';

class _ApplicationPasswords {
  static const String _name = 'application-passwords';
  final WordPressAPI _api;

  _ApplicationPasswords(this._api);

  /// [id] is the user id
  Future<WPResponse> fetch(int id, {int? appId}) async {
    try {
      if (appId != null) {
        final res = await _api.fetch('/users/$id/$_name/$appId');
        return WPResponse(
          statusCode: res.statusCode,
          data: ApplicationPassword.fromMap(res.data),
          meta: res.meta,
        );
      }
      final res = await _api.fetch('/users/$id/$_name');
      return WPResponse(
        statusCode: res.statusCode,
        data: parseApplicationPasswords(res.data),
        meta: res.meta,
      );
    } catch (e) {
      rethrow;
    }
  }
}
