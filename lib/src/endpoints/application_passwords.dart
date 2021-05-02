part of '../main.dart';

class _ApplicationPasswords {
  WordPressAPI _api;

  _ApplicationPasswords(this._api);

  /// [id] is the user id
  Future get(int id, {int? appId}) async {
    if (appId != null) {
      final res = await _api.get('/users/$id/application-passwords/$appId');
      return await ApplicationPassword.fromMap(res.data);
    }
    final res = await _api.get('/users/$id/application-passwords');
    return await parseApplicationPasswords(res.data);
  }
}
