// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'embedded.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EmbeddedSchema _$EmbeddedSchemaFromJson(Map<String, dynamic> json) {
  return _EmbeddedSchema.fromJson(json);
}

/// @nodoc
class _$EmbeddedSchemaTearOff {
  const _$EmbeddedSchemaTearOff();

// ignore: unused_element
  _EmbeddedSchema call(
      {List<UserSchema> author,
      List<List<CommentSchema>> replies,
      @JsonKey(name: 'wp:featuredmedia') List<MediaSchema> media,
      @JsonKey(name: 'wp:terms') List<List> terms}) {
    return _EmbeddedSchema(
      author: author,
      replies: replies,
      media: media,
      terms: terms,
    );
  }

// ignore: unused_element
  EmbeddedSchema fromJson(Map<String, Object> json) {
    return EmbeddedSchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EmbeddedSchema = _$EmbeddedSchemaTearOff();

/// @nodoc
mixin _$EmbeddedSchema {
  /// Embedded author
  List<UserSchema> get author;

  /// Embedded Comments/Replies
  List<List<CommentSchema>> get replies;

  /// Embedded Featured Media
  @JsonKey(name: 'wp:featuredmedia')
  List<MediaSchema> get media;
  @JsonKey(name: 'wp:terms')
  List<List> get terms;

  Map<String, dynamic> toJson();
  $EmbeddedSchemaCopyWith<EmbeddedSchema> get copyWith;
}

/// @nodoc
abstract class $EmbeddedSchemaCopyWith<$Res> {
  factory $EmbeddedSchemaCopyWith(
          EmbeddedSchema value, $Res Function(EmbeddedSchema) then) =
      _$EmbeddedSchemaCopyWithImpl<$Res>;
  $Res call(
      {List<UserSchema> author,
      List<List<CommentSchema>> replies,
      @JsonKey(name: 'wp:featuredmedia') List<MediaSchema> media,
      @JsonKey(name: 'wp:terms') List<List> terms});
}

/// @nodoc
class _$EmbeddedSchemaCopyWithImpl<$Res>
    implements $EmbeddedSchemaCopyWith<$Res> {
  _$EmbeddedSchemaCopyWithImpl(this._value, this._then);

  final EmbeddedSchema _value;
  // ignore: unused_field
  final $Res Function(EmbeddedSchema) _then;

  @override
  $Res call({
    Object author = freezed,
    Object replies = freezed,
    Object media = freezed,
    Object terms = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed ? _value.author : author as List<UserSchema>,
      replies: replies == freezed
          ? _value.replies
          : replies as List<List<CommentSchema>>,
      media: media == freezed ? _value.media : media as List<MediaSchema>,
      terms: terms == freezed ? _value.terms : terms as List<List>,
    ));
  }
}

/// @nodoc
abstract class _$EmbeddedSchemaCopyWith<$Res>
    implements $EmbeddedSchemaCopyWith<$Res> {
  factory _$EmbeddedSchemaCopyWith(
          _EmbeddedSchema value, $Res Function(_EmbeddedSchema) then) =
      __$EmbeddedSchemaCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<UserSchema> author,
      List<List<CommentSchema>> replies,
      @JsonKey(name: 'wp:featuredmedia') List<MediaSchema> media,
      @JsonKey(name: 'wp:terms') List<List> terms});
}

/// @nodoc
class __$EmbeddedSchemaCopyWithImpl<$Res>
    extends _$EmbeddedSchemaCopyWithImpl<$Res>
    implements _$EmbeddedSchemaCopyWith<$Res> {
  __$EmbeddedSchemaCopyWithImpl(
      _EmbeddedSchema _value, $Res Function(_EmbeddedSchema) _then)
      : super(_value, (v) => _then(v as _EmbeddedSchema));

  @override
  _EmbeddedSchema get _value => super._value as _EmbeddedSchema;

  @override
  $Res call({
    Object author = freezed,
    Object replies = freezed,
    Object media = freezed,
    Object terms = freezed,
  }) {
    return _then(_EmbeddedSchema(
      author: author == freezed ? _value.author : author as List<UserSchema>,
      replies: replies == freezed
          ? _value.replies
          : replies as List<List<CommentSchema>>,
      media: media == freezed ? _value.media : media as List<MediaSchema>,
      terms: terms == freezed ? _value.terms : terms as List<List>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EmbeddedSchema implements _EmbeddedSchema {
  _$_EmbeddedSchema(
      {this.author,
      this.replies,
      @JsonKey(name: 'wp:featuredmedia') this.media,
      @JsonKey(name: 'wp:terms') this.terms});

  factory _$_EmbeddedSchema.fromJson(Map<String, dynamic> json) =>
      _$_$_EmbeddedSchemaFromJson(json);

  @override

  /// Embedded author
  final List<UserSchema> author;
  @override

  /// Embedded Comments/Replies
  final List<List<CommentSchema>> replies;
  @override

  /// Embedded Featured Media
  @JsonKey(name: 'wp:featuredmedia')
  final List<MediaSchema> media;
  @override
  @JsonKey(name: 'wp:terms')
  final List<List> terms;

  @override
  String toString() {
    return 'EmbeddedSchema(author: $author, replies: $replies, media: $media, terms: $terms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmbeddedSchema &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.replies, replies) ||
                const DeepCollectionEquality()
                    .equals(other.replies, replies)) &&
            (identical(other.media, media) ||
                const DeepCollectionEquality().equals(other.media, media)) &&
            (identical(other.terms, terms) ||
                const DeepCollectionEquality().equals(other.terms, terms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(replies) ^
      const DeepCollectionEquality().hash(media) ^
      const DeepCollectionEquality().hash(terms);

  @override
  _$EmbeddedSchemaCopyWith<_EmbeddedSchema> get copyWith =>
      __$EmbeddedSchemaCopyWithImpl<_EmbeddedSchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EmbeddedSchemaToJson(this);
  }
}

abstract class _EmbeddedSchema implements EmbeddedSchema {
  factory _EmbeddedSchema(
      {List<UserSchema> author,
      List<List<CommentSchema>> replies,
      @JsonKey(name: 'wp:featuredmedia') List<MediaSchema> media,
      @JsonKey(name: 'wp:terms') List<List> terms}) = _$_EmbeddedSchema;

  factory _EmbeddedSchema.fromJson(Map<String, dynamic> json) =
      _$_EmbeddedSchema.fromJson;

  @override

  /// Embedded author
  List<UserSchema> get author;
  @override

  /// Embedded Comments/Replies
  List<List<CommentSchema>> get replies;
  @override

  /// Embedded Featured Media
  @JsonKey(name: 'wp:featuredmedia')
  List<MediaSchema> get media;
  @override
  @JsonKey(name: 'wp:terms')
  List<List> get terms;
  @override
  _$EmbeddedSchemaCopyWith<_EmbeddedSchema> get copyWith;
}
