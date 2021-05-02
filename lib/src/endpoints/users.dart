part of '../main.dart';

class _Users {
  WordPressAPI _api;

  _Users(this._api);

  /// [GET] users from WP users endpoint
  ///
  /// `/wp/v2/users`
  Future get({int? id, Map<String, dynamic>? args}) async {
    if (id != null) {
      final WPResponse res = await _api.get('users/$id', args: args);
      return User.fromMap(res.data);
    }
    final WPResponse res = await _api.get('users', args: args);
    return parseUsers(res.data);
  }
}
