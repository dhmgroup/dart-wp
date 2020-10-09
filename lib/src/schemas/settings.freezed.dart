// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SettingsSchema _$SettingsSchemaFromJson(Map<String, dynamic> json) {
  return _SettingsSchema.fromJson(json);
}

/// @nodoc
class _$SettingsSchemaTearOff {
  const _$SettingsSchemaTearOff();

// ignore: unused_element
  _SettingsSchema call(
      {String title,
      String description,
      String url,
      String email,
      String timezone,
      String dateFormat,
      String timeFormat,
      int startOfWeek,
      String language,
      bool useSmilies,
      int defaultCategory,
      String defaultPostFormat,
      int postsPerPage,
      String defaultPingStatus,
      String defaultCommentStatus}) {
    return _SettingsSchema(
      title: title,
      description: description,
      url: url,
      email: email,
      timezone: timezone,
      dateFormat: dateFormat,
      timeFormat: timeFormat,
      startOfWeek: startOfWeek,
      language: language,
      useSmilies: useSmilies,
      defaultCategory: defaultCategory,
      defaultPostFormat: defaultPostFormat,
      postsPerPage: postsPerPage,
      defaultPingStatus: defaultPingStatus,
      defaultCommentStatus: defaultCommentStatus,
    );
  }

// ignore: unused_element
  SettingsSchema fromJson(Map<String, Object> json) {
    return SettingsSchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsSchema = _$SettingsSchemaTearOff();

/// @nodoc
mixin _$SettingsSchema {
  ///Site title.
  String get title;

  ///Site tagline.
  String get description;

  ///Site URL.
  String get url;

  /// This address is used for admin purposes, like new user notification.
  String get email;

  /// A city in the same timezone as you.
  String get timezone;

  /// A date format for all date strings.
  String get dateFormat;

  /// A time format for all time strings.
  String get timeFormat;

  /// A day number of the week that the week should start on.
  int get startOfWeek;

  ///WordPress locale code.
  String get language;

  ///Convert emoticons to graphics on display.
  bool get useSmilies;

  ///Default post category.
  int get defaultCategory;

  ///Default post format.
  String get defaultPostFormat;

  ///Blog pages show at most.
  int get postsPerPage;

  ///Allow link notifications from other blogs (pingbacks and trackbacks) on new articles.
  ///
  ///One of: "open", "closed"
  String get defaultPingStatus;

  ///Allow people to submit comments on new posts.
  ///
  ///One of: "open", "closed"
  String get defaultCommentStatus;

  Map<String, dynamic> toJson();
  $SettingsSchemaCopyWith<SettingsSchema> get copyWith;
}

/// @nodoc
abstract class $SettingsSchemaCopyWith<$Res> {
  factory $SettingsSchemaCopyWith(
          SettingsSchema value, $Res Function(SettingsSchema) then) =
      _$SettingsSchemaCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      String url,
      String email,
      String timezone,
      String dateFormat,
      String timeFormat,
      int startOfWeek,
      String language,
      bool useSmilies,
      int defaultCategory,
      String defaultPostFormat,
      int postsPerPage,
      String defaultPingStatus,
      String defaultCommentStatus});
}

/// @nodoc
class _$SettingsSchemaCopyWithImpl<$Res>
    implements $SettingsSchemaCopyWith<$Res> {
  _$SettingsSchemaCopyWithImpl(this._value, this._then);

  final SettingsSchema _value;
  // ignore: unused_field
  final $Res Function(SettingsSchema) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object url = freezed,
    Object email = freezed,
    Object timezone = freezed,
    Object dateFormat = freezed,
    Object timeFormat = freezed,
    Object startOfWeek = freezed,
    Object language = freezed,
    Object useSmilies = freezed,
    Object defaultCategory = freezed,
    Object defaultPostFormat = freezed,
    Object postsPerPage = freezed,
    Object defaultPingStatus = freezed,
    Object defaultCommentStatus = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      url: url == freezed ? _value.url : url as String,
      email: email == freezed ? _value.email : email as String,
      timezone: timezone == freezed ? _value.timezone : timezone as String,
      dateFormat:
          dateFormat == freezed ? _value.dateFormat : dateFormat as String,
      timeFormat:
          timeFormat == freezed ? _value.timeFormat : timeFormat as String,
      startOfWeek:
          startOfWeek == freezed ? _value.startOfWeek : startOfWeek as int,
      language: language == freezed ? _value.language : language as String,
      useSmilies:
          useSmilies == freezed ? _value.useSmilies : useSmilies as bool,
      defaultCategory: defaultCategory == freezed
          ? _value.defaultCategory
          : defaultCategory as int,
      defaultPostFormat: defaultPostFormat == freezed
          ? _value.defaultPostFormat
          : defaultPostFormat as String,
      postsPerPage:
          postsPerPage == freezed ? _value.postsPerPage : postsPerPage as int,
      defaultPingStatus: defaultPingStatus == freezed
          ? _value.defaultPingStatus
          : defaultPingStatus as String,
      defaultCommentStatus: defaultCommentStatus == freezed
          ? _value.defaultCommentStatus
          : defaultCommentStatus as String,
    ));
  }
}

/// @nodoc
abstract class _$SettingsSchemaCopyWith<$Res>
    implements $SettingsSchemaCopyWith<$Res> {
  factory _$SettingsSchemaCopyWith(
          _SettingsSchema value, $Res Function(_SettingsSchema) then) =
      __$SettingsSchemaCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      String url,
      String email,
      String timezone,
      String dateFormat,
      String timeFormat,
      int startOfWeek,
      String language,
      bool useSmilies,
      int defaultCategory,
      String defaultPostFormat,
      int postsPerPage,
      String defaultPingStatus,
      String defaultCommentStatus});
}

/// @nodoc
class __$SettingsSchemaCopyWithImpl<$Res>
    extends _$SettingsSchemaCopyWithImpl<$Res>
    implements _$SettingsSchemaCopyWith<$Res> {
  __$SettingsSchemaCopyWithImpl(
      _SettingsSchema _value, $Res Function(_SettingsSchema) _then)
      : super(_value, (v) => _then(v as _SettingsSchema));

  @override
  _SettingsSchema get _value => super._value as _SettingsSchema;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object url = freezed,
    Object email = freezed,
    Object timezone = freezed,
    Object dateFormat = freezed,
    Object timeFormat = freezed,
    Object startOfWeek = freezed,
    Object language = freezed,
    Object useSmilies = freezed,
    Object defaultCategory = freezed,
    Object defaultPostFormat = freezed,
    Object postsPerPage = freezed,
    Object defaultPingStatus = freezed,
    Object defaultCommentStatus = freezed,
  }) {
    return _then(_SettingsSchema(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      url: url == freezed ? _value.url : url as String,
      email: email == freezed ? _value.email : email as String,
      timezone: timezone == freezed ? _value.timezone : timezone as String,
      dateFormat:
          dateFormat == freezed ? _value.dateFormat : dateFormat as String,
      timeFormat:
          timeFormat == freezed ? _value.timeFormat : timeFormat as String,
      startOfWeek:
          startOfWeek == freezed ? _value.startOfWeek : startOfWeek as int,
      language: language == freezed ? _value.language : language as String,
      useSmilies:
          useSmilies == freezed ? _value.useSmilies : useSmilies as bool,
      defaultCategory: defaultCategory == freezed
          ? _value.defaultCategory
          : defaultCategory as int,
      defaultPostFormat: defaultPostFormat == freezed
          ? _value.defaultPostFormat
          : defaultPostFormat as String,
      postsPerPage:
          postsPerPage == freezed ? _value.postsPerPage : postsPerPage as int,
      defaultPingStatus: defaultPingStatus == freezed
          ? _value.defaultPingStatus
          : defaultPingStatus as String,
      defaultCommentStatus: defaultCommentStatus == freezed
          ? _value.defaultCommentStatus
          : defaultCommentStatus as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SettingsSchema implements _SettingsSchema {
  _$_SettingsSchema(
      {this.title,
      this.description,
      this.url,
      this.email,
      this.timezone,
      this.dateFormat,
      this.timeFormat,
      this.startOfWeek,
      this.language,
      this.useSmilies,
      this.defaultCategory,
      this.defaultPostFormat,
      this.postsPerPage,
      this.defaultPingStatus,
      this.defaultCommentStatus});

  factory _$_SettingsSchema.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingsSchemaFromJson(json);

  @override

  ///Site title.
  final String title;
  @override

  ///Site tagline.
  final String description;
  @override

  ///Site URL.
  final String url;
  @override

  /// This address is used for admin purposes, like new user notification.
  final String email;
  @override

  /// A city in the same timezone as you.
  final String timezone;
  @override

  /// A date format for all date strings.
  final String dateFormat;
  @override

  /// A time format for all time strings.
  final String timeFormat;
  @override

  /// A day number of the week that the week should start on.
  final int startOfWeek;
  @override

  ///WordPress locale code.
  final String language;
  @override

  ///Convert emoticons to graphics on display.
  final bool useSmilies;
  @override

  ///Default post category.
  final int defaultCategory;
  @override

  ///Default post format.
  final String defaultPostFormat;
  @override

  ///Blog pages show at most.
  final int postsPerPage;
  @override

  ///Allow link notifications from other blogs (pingbacks and trackbacks) on new articles.
  ///
  ///One of: "open", "closed"
  final String defaultPingStatus;
  @override

  ///Allow people to submit comments on new posts.
  ///
  ///One of: "open", "closed"
  final String defaultCommentStatus;

  @override
  String toString() {
    return 'SettingsSchema(title: $title, description: $description, url: $url, email: $email, timezone: $timezone, dateFormat: $dateFormat, timeFormat: $timeFormat, startOfWeek: $startOfWeek, language: $language, useSmilies: $useSmilies, defaultCategory: $defaultCategory, defaultPostFormat: $defaultPostFormat, postsPerPage: $postsPerPage, defaultPingStatus: $defaultPingStatus, defaultCommentStatus: $defaultCommentStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsSchema &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.timezone, timezone) ||
                const DeepCollectionEquality()
                    .equals(other.timezone, timezone)) &&
            (identical(other.dateFormat, dateFormat) ||
                const DeepCollectionEquality()
                    .equals(other.dateFormat, dateFormat)) &&
            (identical(other.timeFormat, timeFormat) ||
                const DeepCollectionEquality()
                    .equals(other.timeFormat, timeFormat)) &&
            (identical(other.startOfWeek, startOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.startOfWeek, startOfWeek)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.useSmilies, useSmilies) ||
                const DeepCollectionEquality()
                    .equals(other.useSmilies, useSmilies)) &&
            (identical(other.defaultCategory, defaultCategory) ||
                const DeepCollectionEquality()
                    .equals(other.defaultCategory, defaultCategory)) &&
            (identical(other.defaultPostFormat, defaultPostFormat) ||
                const DeepCollectionEquality()
                    .equals(other.defaultPostFormat, defaultPostFormat)) &&
            (identical(other.postsPerPage, postsPerPage) ||
                const DeepCollectionEquality()
                    .equals(other.postsPerPage, postsPerPage)) &&
            (identical(other.defaultPingStatus, defaultPingStatus) ||
                const DeepCollectionEquality()
                    .equals(other.defaultPingStatus, defaultPingStatus)) &&
            (identical(other.defaultCommentStatus, defaultCommentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.defaultCommentStatus, defaultCommentStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(timezone) ^
      const DeepCollectionEquality().hash(dateFormat) ^
      const DeepCollectionEquality().hash(timeFormat) ^
      const DeepCollectionEquality().hash(startOfWeek) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(useSmilies) ^
      const DeepCollectionEquality().hash(defaultCategory) ^
      const DeepCollectionEquality().hash(defaultPostFormat) ^
      const DeepCollectionEquality().hash(postsPerPage) ^
      const DeepCollectionEquality().hash(defaultPingStatus) ^
      const DeepCollectionEquality().hash(defaultCommentStatus);

  @override
  _$SettingsSchemaCopyWith<_SettingsSchema> get copyWith =>
      __$SettingsSchemaCopyWithImpl<_SettingsSchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingsSchemaToJson(this);
  }
}

abstract class _SettingsSchema implements SettingsSchema {
  factory _SettingsSchema(
      {String title,
      String description,
      String url,
      String email,
      String timezone,
      String dateFormat,
      String timeFormat,
      int startOfWeek,
      String language,
      bool useSmilies,
      int defaultCategory,
      String defaultPostFormat,
      int postsPerPage,
      String defaultPingStatus,
      String defaultCommentStatus}) = _$_SettingsSchema;

  factory _SettingsSchema.fromJson(Map<String, dynamic> json) =
      _$_SettingsSchema.fromJson;

  @override

  ///Site title.
  String get title;
  @override

  ///Site tagline.
  String get description;
  @override

  ///Site URL.
  String get url;
  @override

  /// This address is used for admin purposes, like new user notification.
  String get email;
  @override

  /// A city in the same timezone as you.
  String get timezone;
  @override

  /// A date format for all date strings.
  String get dateFormat;
  @override

  /// A time format for all time strings.
  String get timeFormat;
  @override

  /// A day number of the week that the week should start on.
  int get startOfWeek;
  @override

  ///WordPress locale code.
  String get language;
  @override

  ///Convert emoticons to graphics on display.
  bool get useSmilies;
  @override

  ///Default post category.
  int get defaultCategory;
  @override

  ///Default post format.
  String get defaultPostFormat;
  @override

  ///Blog pages show at most.
  int get postsPerPage;
  @override

  ///Allow link notifications from other blogs (pingbacks and trackbacks) on new articles.
  ///
  ///One of: "open", "closed"
  String get defaultPingStatus;
  @override

  ///Allow people to submit comments on new posts.
  ///
  ///One of: "open", "closed"
  String get defaultCommentStatus;
  @override
  _$SettingsSchemaCopyWith<_SettingsSchema> get copyWith;
}
