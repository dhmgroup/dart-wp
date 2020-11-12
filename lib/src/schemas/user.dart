import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class UserSchema with _$UserSchema {
  factory UserSchema({
    ///Unique identifier for the user.
    int id,

    ///Login name for the user.
    String username,

    /// Display name for the user.
    String name,

    ///First name for the user.
    String firstName,

    ///Last name for the user.
    String lastName,

    ///The email address for the user.
    String email,

    ///URL of the user.
    String url,

    ///Description of the user.
    String description,

    ///Author URL of the user.
    String link,

    ///Locale for the user.
    ///
    ///One of: , enUS
    String locale,

    ///The nickname for the user.
    String nickname,

    ///An alphanumeric identifier for the user.
    String slug,

    ///Registration date for the user.
    String registeredDate,

    ///Roles assigned to the user.
    List roles,

    ///Password for the user (never included).
    String password,

    ///All capabilities assigned to the user.
    Map<String, dynamic> capabilities,

    ///Any extra capabilities assigned to the user.
    Map<String, dynamic> extraCapabilities,

    ///Avatar URLs for the user.
    Map<String, dynamic> avatarUrls,

    ///Meta fields.
    dynamic meta,
  }) = _UserSchema;

  factory UserSchema.fromJson(Map<String, dynamic> json) =>
      _$UserSchemaFromJson(json);
}
