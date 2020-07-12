import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

///  WordPress User Endpoint Model /wp/v2/users
@JsonSerializable()
class UserSchema {
  ///Unique identifier for the user.
  final int id;

  ///Login name for the user.
  final String username;

  /// Display name for the user.
  final String name;

  ///First name for the user.
  final String firstName;

  ///Last name for the user.
  final String lastName;

  ///The email address for the user.
  final String email;

  ///URL of the user.
  final String url;

  ///Description of the user.
  final String description;

  ///Author URL of the user.
  final String link;

  ///Locale for the user.
  ///
  ///One of: , enUS
  final String locale;

  ///The nickname for the user.
  final String nickname;

  ///An alphanumeric identifier for the user.
  final String slug;

  ///Registration date for the user.
  final String registeredDate;

  ///Roles assigned to the user.
  final List roles;

  ///Password for the user (never included).
  final String password;

  ///All capabilities assigned to the user.
  final Map<String, dynamic> capabilities;

  ///Any extra capabilities assigned to the user.
  final Map<String, dynamic> extraCapabilities;

  ///Avatar URLs for the user.
  final Map<String, dynamic> avatarUrls;

  ///Meta fields.
  final Map<String, dynamic> meta;

  UserSchema({
    this.id,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.email,
    this.url,
    this.description,
    this.link,
    this.locale,
    this.nickname,
    this.slug,
    this.registeredDate,
    this.roles,
    this.password,
    this.capabilities,
    this.extraCapabilities,
    this.avatarUrls,
    this.meta,
  });

  /// Generate User Model from JSON
  factory UserSchema.fromJson(Map<String, dynamic> data) => _$UserSchemaFromJson(data);

  /// Convert User Model to JSON
  Map<String, dynamic> toJson() => _$UserSchemaToJson(this);
}
