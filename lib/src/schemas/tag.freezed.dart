// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TagSchema _$TagSchemaFromJson(Map<String, dynamic> json) {
  return _TagSchema.fromJson(json);
}

/// @nodoc
class _$TagSchemaTearOff {
  const _$TagSchemaTearOff();

// ignore: unused_element
  _TagSchema call(
      {int id,
      int count,
      String description,
      String link,
      String name,
      String slug,
      String taxonomy,
      List<dynamic> meta}) {
    return _TagSchema(
      id: id,
      count: count,
      description: description,
      link: link,
      name: name,
      slug: slug,
      taxonomy: taxonomy,
      meta: meta,
    );
  }

// ignore: unused_element
  TagSchema fromJson(Map<String, Object> json) {
    return TagSchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TagSchema = _$TagSchemaTearOff();

/// @nodoc
mixin _$TagSchema {
  ///Unique identifier for the term.
  int get id;

  ///Number of published posts for the term.
  int get count;

  ///HTML description of the term.
  String get description;

  ///URL of the term.
  String get link;

  ///HTML title for the term.
  String get name;

  ///An alphanumeric identifier for the term unique to its type.
  String get slug;

  ///Type attribution for the term.
  ///
  /// One of: "category", "post_tag", "nav_menu", "linkCategory", "postFormat"
  String get taxonomy;

  ///Meta fields.
  List<dynamic> get meta;

  Map<String, dynamic> toJson();
  $TagSchemaCopyWith<TagSchema> get copyWith;
}

/// @nodoc
abstract class $TagSchemaCopyWith<$Res> {
  factory $TagSchemaCopyWith(TagSchema value, $Res Function(TagSchema) then) =
      _$TagSchemaCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int count,
      String description,
      String link,
      String name,
      String slug,
      String taxonomy,
      List<dynamic> meta});
}

/// @nodoc
class _$TagSchemaCopyWithImpl<$Res> implements $TagSchemaCopyWith<$Res> {
  _$TagSchemaCopyWithImpl(this._value, this._then);

  final TagSchema _value;
  // ignore: unused_field
  final $Res Function(TagSchema) _then;

  @override
  $Res call({
    Object id = freezed,
    Object count = freezed,
    Object description = freezed,
    Object link = freezed,
    Object name = freezed,
    Object slug = freezed,
    Object taxonomy = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      count: count == freezed ? _value.count : count as int,
      description:
          description == freezed ? _value.description : description as String,
      link: link == freezed ? _value.link : link as String,
      name: name == freezed ? _value.name : name as String,
      slug: slug == freezed ? _value.slug : slug as String,
      taxonomy: taxonomy == freezed ? _value.taxonomy : taxonomy as String,
      meta: meta == freezed ? _value.meta : meta as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$TagSchemaCopyWith<$Res> implements $TagSchemaCopyWith<$Res> {
  factory _$TagSchemaCopyWith(
          _TagSchema value, $Res Function(_TagSchema) then) =
      __$TagSchemaCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int count,
      String description,
      String link,
      String name,
      String slug,
      String taxonomy,
      List<dynamic> meta});
}

/// @nodoc
class __$TagSchemaCopyWithImpl<$Res> extends _$TagSchemaCopyWithImpl<$Res>
    implements _$TagSchemaCopyWith<$Res> {
  __$TagSchemaCopyWithImpl(_TagSchema _value, $Res Function(_TagSchema) _then)
      : super(_value, (v) => _then(v as _TagSchema));

  @override
  _TagSchema get _value => super._value as _TagSchema;

  @override
  $Res call({
    Object id = freezed,
    Object count = freezed,
    Object description = freezed,
    Object link = freezed,
    Object name = freezed,
    Object slug = freezed,
    Object taxonomy = freezed,
    Object meta = freezed,
  }) {
    return _then(_TagSchema(
      id: id == freezed ? _value.id : id as int,
      count: count == freezed ? _value.count : count as int,
      description:
          description == freezed ? _value.description : description as String,
      link: link == freezed ? _value.link : link as String,
      name: name == freezed ? _value.name : name as String,
      slug: slug == freezed ? _value.slug : slug as String,
      taxonomy: taxonomy == freezed ? _value.taxonomy : taxonomy as String,
      meta: meta == freezed ? _value.meta : meta as List<dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TagSchema implements _TagSchema {
  _$_TagSchema(
      {this.id,
      this.count,
      this.description,
      this.link,
      this.name,
      this.slug,
      this.taxonomy,
      this.meta});

  factory _$_TagSchema.fromJson(Map<String, dynamic> json) =>
      _$_$_TagSchemaFromJson(json);

  @override

  ///Unique identifier for the term.
  final int id;
  @override

  ///Number of published posts for the term.
  final int count;
  @override

  ///HTML description of the term.
  final String description;
  @override

  ///URL of the term.
  final String link;
  @override

  ///HTML title for the term.
  final String name;
  @override

  ///An alphanumeric identifier for the term unique to its type.
  final String slug;
  @override

  ///Type attribution for the term.
  ///
  /// One of: "category", "post_tag", "nav_menu", "linkCategory", "postFormat"
  final String taxonomy;
  @override

  ///Meta fields.
  final List<dynamic> meta;

  @override
  String toString() {
    return 'TagSchema(id: $id, count: $count, description: $description, link: $link, name: $name, slug: $slug, taxonomy: $taxonomy, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagSchema &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.taxonomy, taxonomy) ||
                const DeepCollectionEquality()
                    .equals(other.taxonomy, taxonomy)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(taxonomy) ^
      const DeepCollectionEquality().hash(meta);

  @override
  _$TagSchemaCopyWith<_TagSchema> get copyWith =>
      __$TagSchemaCopyWithImpl<_TagSchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TagSchemaToJson(this);
  }
}

abstract class _TagSchema implements TagSchema {
  factory _TagSchema(
      {int id,
      int count,
      String description,
      String link,
      String name,
      String slug,
      String taxonomy,
      List<dynamic> meta}) = _$_TagSchema;

  factory _TagSchema.fromJson(Map<String, dynamic> json) =
      _$_TagSchema.fromJson;

  @override

  ///Unique identifier for the term.
  int get id;
  @override

  ///Number of published posts for the term.
  int get count;
  @override

  ///HTML description of the term.
  String get description;
  @override

  ///URL of the term.
  String get link;
  @override

  ///HTML title for the term.
  String get name;
  @override

  ///An alphanumeric identifier for the term unique to its type.
  String get slug;
  @override

  ///Type attribution for the term.
  ///
  /// One of: "category", "post_tag", "nav_menu", "linkCategory", "postFormat"
  String get taxonomy;
  @override

  ///Meta fields.
  List<dynamic> get meta;
  @override
  _$TagSchemaCopyWith<_TagSchema> get copyWith;
}
