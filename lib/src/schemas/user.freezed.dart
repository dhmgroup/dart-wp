// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserSchema _$UserSchemaFromJson(Map<String, dynamic> json) {
  return _UserSchema.fromJson(json);
}

/// @nodoc
class _$UserSchemaTearOff {
  const _$UserSchemaTearOff();

// ignore: unused_element
  _UserSchema call(
      {int id,
      String username,
      String name,
      String firstName,
      String lastName,
      String email,
      String url,
      String description,
      String link,
      String locale,
      String nickname,
      String slug,
      String registeredDate,
      List<dynamic> roles,
      String password,
      Map<String, dynamic> capabilities,
      Map<String, dynamic> extraCapabilities,
      Map<String, dynamic> avatarUrls,
      dynamic meta}) {
    return _UserSchema(
      id: id,
      username: username,
      name: name,
      firstName: firstName,
      lastName: lastName,
      email: email,
      url: url,
      description: description,
      link: link,
      locale: locale,
      nickname: nickname,
      slug: slug,
      registeredDate: registeredDate,
      roles: roles,
      password: password,
      capabilities: capabilities,
      extraCapabilities: extraCapabilities,
      avatarUrls: avatarUrls,
      meta: meta,
    );
  }

// ignore: unused_element
  UserSchema fromJson(Map<String, Object> json) {
    return UserSchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserSchema = _$UserSchemaTearOff();

/// @nodoc
mixin _$UserSchema {
  ///Unique identifier for the user.
  int get id;

  ///Login name for the user.
  String get username;

  /// Display name for the user.
  String get name;

  ///First name for the user.
  String get firstName;

  ///Last name for the user.
  String get lastName;

  ///The email address for the user.
  String get email;

  ///URL of the user.
  String get url;

  ///Description of the user.
  String get description;

  ///Author URL of the user.
  String get link;

  ///Locale for the user.
  ///
  ///One of: , enUS
  String get locale;

  ///The nickname for the user.
  String get nickname;

  ///An alphanumeric identifier for the user.
  String get slug;

  ///Registration date for the user.
  String get registeredDate;

  ///Roles assigned to the user.
  List<dynamic> get roles;

  ///Password for the user (never included).
  String get password;

  ///All capabilities assigned to the user.
  Map<String, dynamic> get capabilities;

  ///Any extra capabilities assigned to the user.
  Map<String, dynamic> get extraCapabilities;

  ///Avatar URLs for the user.
  Map<String, dynamic> get avatarUrls;

  ///Meta fields.
  dynamic get meta;

  Map<String, dynamic> toJson();
  $UserSchemaCopyWith<UserSchema> get copyWith;
}

/// @nodoc
abstract class $UserSchemaCopyWith<$Res> {
  factory $UserSchemaCopyWith(
          UserSchema value, $Res Function(UserSchema) then) =
      _$UserSchemaCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String name,
      String firstName,
      String lastName,
      String email,
      String url,
      String description,
      String link,
      String locale,
      String nickname,
      String slug,
      String registeredDate,
      List<dynamic> roles,
      String password,
      Map<String, dynamic> capabilities,
      Map<String, dynamic> extraCapabilities,
      Map<String, dynamic> avatarUrls,
      dynamic meta});
}

/// @nodoc
class _$UserSchemaCopyWithImpl<$Res> implements $UserSchemaCopyWith<$Res> {
  _$UserSchemaCopyWithImpl(this._value, this._then);

  final UserSchema _value;
  // ignore: unused_field
  final $Res Function(UserSchema) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object url = freezed,
    Object description = freezed,
    Object link = freezed,
    Object locale = freezed,
    Object nickname = freezed,
    Object slug = freezed,
    Object registeredDate = freezed,
    Object roles = freezed,
    Object password = freezed,
    Object capabilities = freezed,
    Object extraCapabilities = freezed,
    Object avatarUrls = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      url: url == freezed ? _value.url : url as String,
      description:
          description == freezed ? _value.description : description as String,
      link: link == freezed ? _value.link : link as String,
      locale: locale == freezed ? _value.locale : locale as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      slug: slug == freezed ? _value.slug : slug as String,
      registeredDate: registeredDate == freezed
          ? _value.registeredDate
          : registeredDate as String,
      roles: roles == freezed ? _value.roles : roles as List<dynamic>,
      password: password == freezed ? _value.password : password as String,
      capabilities: capabilities == freezed
          ? _value.capabilities
          : capabilities as Map<String, dynamic>,
      extraCapabilities: extraCapabilities == freezed
          ? _value.extraCapabilities
          : extraCapabilities as Map<String, dynamic>,
      avatarUrls: avatarUrls == freezed
          ? _value.avatarUrls
          : avatarUrls as Map<String, dynamic>,
      meta: meta == freezed ? _value.meta : meta as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$UserSchemaCopyWith<$Res> implements $UserSchemaCopyWith<$Res> {
  factory _$UserSchemaCopyWith(
          _UserSchema value, $Res Function(_UserSchema) then) =
      __$UserSchemaCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String name,
      String firstName,
      String lastName,
      String email,
      String url,
      String description,
      String link,
      String locale,
      String nickname,
      String slug,
      String registeredDate,
      List<dynamic> roles,
      String password,
      Map<String, dynamic> capabilities,
      Map<String, dynamic> extraCapabilities,
      Map<String, dynamic> avatarUrls,
      dynamic meta});
}

/// @nodoc
class __$UserSchemaCopyWithImpl<$Res> extends _$UserSchemaCopyWithImpl<$Res>
    implements _$UserSchemaCopyWith<$Res> {
  __$UserSchemaCopyWithImpl(
      _UserSchema _value, $Res Function(_UserSchema) _then)
      : super(_value, (v) => _then(v as _UserSchema));

  @override
  _UserSchema get _value => super._value as _UserSchema;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object url = freezed,
    Object description = freezed,
    Object link = freezed,
    Object locale = freezed,
    Object nickname = freezed,
    Object slug = freezed,
    Object registeredDate = freezed,
    Object roles = freezed,
    Object password = freezed,
    Object capabilities = freezed,
    Object extraCapabilities = freezed,
    Object avatarUrls = freezed,
    Object meta = freezed,
  }) {
    return _then(_UserSchema(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      url: url == freezed ? _value.url : url as String,
      description:
          description == freezed ? _value.description : description as String,
      link: link == freezed ? _value.link : link as String,
      locale: locale == freezed ? _value.locale : locale as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      slug: slug == freezed ? _value.slug : slug as String,
      registeredDate: registeredDate == freezed
          ? _value.registeredDate
          : registeredDate as String,
      roles: roles == freezed ? _value.roles : roles as List<dynamic>,
      password: password == freezed ? _value.password : password as String,
      capabilities: capabilities == freezed
          ? _value.capabilities
          : capabilities as Map<String, dynamic>,
      extraCapabilities: extraCapabilities == freezed
          ? _value.extraCapabilities
          : extraCapabilities as Map<String, dynamic>,
      avatarUrls: avatarUrls == freezed
          ? _value.avatarUrls
          : avatarUrls as Map<String, dynamic>,
      meta: meta == freezed ? _value.meta : meta as dynamic,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserSchema implements _UserSchema {
  _$_UserSchema(
      {this.id,
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
      this.meta});

  factory _$_UserSchema.fromJson(Map<String, dynamic> json) =>
      _$_$_UserSchemaFromJson(json);

  @override

  ///Unique identifier for the user.
  final int id;
  @override

  ///Login name for the user.
  final String username;
  @override

  /// Display name for the user.
  final String name;
  @override

  ///First name for the user.
  final String firstName;
  @override

  ///Last name for the user.
  final String lastName;
  @override

  ///The email address for the user.
  final String email;
  @override

  ///URL of the user.
  final String url;
  @override

  ///Description of the user.
  final String description;
  @override

  ///Author URL of the user.
  final String link;
  @override

  ///Locale for the user.
  ///
  ///One of: , enUS
  final String locale;
  @override

  ///The nickname for the user.
  final String nickname;
  @override

  ///An alphanumeric identifier for the user.
  final String slug;
  @override

  ///Registration date for the user.
  final String registeredDate;
  @override

  ///Roles assigned to the user.
  final List<dynamic> roles;
  @override

  ///Password for the user (never included).
  final String password;
  @override

  ///All capabilities assigned to the user.
  final Map<String, dynamic> capabilities;
  @override

  ///Any extra capabilities assigned to the user.
  final Map<String, dynamic> extraCapabilities;
  @override

  ///Avatar URLs for the user.
  final Map<String, dynamic> avatarUrls;
  @override

  ///Meta fields.
  final dynamic meta;

  @override
  String toString() {
    return 'UserSchema(id: $id, username: $username, name: $name, firstName: $firstName, lastName: $lastName, email: $email, url: $url, description: $description, link: $link, locale: $locale, nickname: $nickname, slug: $slug, registeredDate: $registeredDate, roles: $roles, password: $password, capabilities: $capabilities, extraCapabilities: $extraCapabilities, avatarUrls: $avatarUrls, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSchema &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.registeredDate, registeredDate) ||
                const DeepCollectionEquality()
                    .equals(other.registeredDate, registeredDate)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.capabilities, capabilities) ||
                const DeepCollectionEquality()
                    .equals(other.capabilities, capabilities)) &&
            (identical(other.extraCapabilities, extraCapabilities) ||
                const DeepCollectionEquality()
                    .equals(other.extraCapabilities, extraCapabilities)) &&
            (identical(other.avatarUrls, avatarUrls) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrls, avatarUrls)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(registeredDate) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(capabilities) ^
      const DeepCollectionEquality().hash(extraCapabilities) ^
      const DeepCollectionEquality().hash(avatarUrls) ^
      const DeepCollectionEquality().hash(meta);

  @override
  _$UserSchemaCopyWith<_UserSchema> get copyWith =>
      __$UserSchemaCopyWithImpl<_UserSchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserSchemaToJson(this);
  }
}

abstract class _UserSchema implements UserSchema {
  factory _UserSchema(
      {int id,
      String username,
      String name,
      String firstName,
      String lastName,
      String email,
      String url,
      String description,
      String link,
      String locale,
      String nickname,
      String slug,
      String registeredDate,
      List<dynamic> roles,
      String password,
      Map<String, dynamic> capabilities,
      Map<String, dynamic> extraCapabilities,
      Map<String, dynamic> avatarUrls,
      dynamic meta}) = _$_UserSchema;

  factory _UserSchema.fromJson(Map<String, dynamic> json) =
      _$_UserSchema.fromJson;

  @override

  ///Unique identifier for the user.
  int get id;
  @override

  ///Login name for the user.
  String get username;
  @override

  /// Display name for the user.
  String get name;
  @override

  ///First name for the user.
  String get firstName;
  @override

  ///Last name for the user.
  String get lastName;
  @override

  ///The email address for the user.
  String get email;
  @override

  ///URL of the user.
  String get url;
  @override

  ///Description of the user.
  String get description;
  @override

  ///Author URL of the user.
  String get link;
  @override

  ///Locale for the user.
  ///
  ///One of: , enUS
  String get locale;
  @override

  ///The nickname for the user.
  String get nickname;
  @override

  ///An alphanumeric identifier for the user.
  String get slug;
  @override

  ///Registration date for the user.
  String get registeredDate;
  @override

  ///Roles assigned to the user.
  List<dynamic> get roles;
  @override

  ///Password for the user (never included).
  String get password;
  @override

  ///All capabilities assigned to the user.
  Map<String, dynamic> get capabilities;
  @override

  ///Any extra capabilities assigned to the user.
  Map<String, dynamic> get extraCapabilities;
  @override

  ///Avatar URLs for the user.
  Map<String, dynamic> get avatarUrls;
  @override

  ///Meta fields.
  dynamic get meta;
  @override
  _$UserSchemaCopyWith<_UserSchema> get copyWith;
}
