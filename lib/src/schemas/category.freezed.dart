// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CategorySchema _$CategorySchemaFromJson(Map<String, dynamic> json) {
  return _CategorySchema.fromJson(json);
}

/// @nodoc
class _$CategorySchemaTearOff {
  const _$CategorySchemaTearOff();

// ignore: unused_element
  _CategorySchema call(
      {int id,
      int count,
      String description,
      String link,
      String name,
      String slug,
      String taxonomy,
      int parent,
      dynamic meta}) {
    return _CategorySchema(
      id: id,
      count: count,
      description: description,
      link: link,
      name: name,
      slug: slug,
      taxonomy: taxonomy,
      parent: parent,
      meta: meta,
    );
  }

// ignore: unused_element
  CategorySchema fromJson(Map<String, Object> json) {
    return CategorySchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CategorySchema = _$CategorySchemaTearOff();

/// @nodoc
mixin _$CategorySchema {
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
  ///One of: "category", "post_tag", "nav_menu", "linkCategory", "postFormat"
  String get taxonomy;

  ///The parent term ID.
  int get parent;

  ///Meta fields.
  dynamic get meta;

  Map<String, dynamic> toJson();
  $CategorySchemaCopyWith<CategorySchema> get copyWith;
}

/// @nodoc
abstract class $CategorySchemaCopyWith<$Res> {
  factory $CategorySchemaCopyWith(
          CategorySchema value, $Res Function(CategorySchema) then) =
      _$CategorySchemaCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int count,
      String description,
      String link,
      String name,
      String slug,
      String taxonomy,
      int parent,
      dynamic meta});
}

/// @nodoc
class _$CategorySchemaCopyWithImpl<$Res>
    implements $CategorySchemaCopyWith<$Res> {
  _$CategorySchemaCopyWithImpl(this._value, this._then);

  final CategorySchema _value;
  // ignore: unused_field
  final $Res Function(CategorySchema) _then;

  @override
  $Res call({
    Object id = freezed,
    Object count = freezed,
    Object description = freezed,
    Object link = freezed,
    Object name = freezed,
    Object slug = freezed,
    Object taxonomy = freezed,
    Object parent = freezed,
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
      parent: parent == freezed ? _value.parent : parent as int,
      meta: meta == freezed ? _value.meta : meta as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$CategorySchemaCopyWith<$Res>
    implements $CategorySchemaCopyWith<$Res> {
  factory _$CategorySchemaCopyWith(
          _CategorySchema value, $Res Function(_CategorySchema) then) =
      __$CategorySchemaCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int count,
      String description,
      String link,
      String name,
      String slug,
      String taxonomy,
      int parent,
      dynamic meta});
}

/// @nodoc
class __$CategorySchemaCopyWithImpl<$Res>
    extends _$CategorySchemaCopyWithImpl<$Res>
    implements _$CategorySchemaCopyWith<$Res> {
  __$CategorySchemaCopyWithImpl(
      _CategorySchema _value, $Res Function(_CategorySchema) _then)
      : super(_value, (v) => _then(v as _CategorySchema));

  @override
  _CategorySchema get _value => super._value as _CategorySchema;

  @override
  $Res call({
    Object id = freezed,
    Object count = freezed,
    Object description = freezed,
    Object link = freezed,
    Object name = freezed,
    Object slug = freezed,
    Object taxonomy = freezed,
    Object parent = freezed,
    Object meta = freezed,
  }) {
    return _then(_CategorySchema(
      id: id == freezed ? _value.id : id as int,
      count: count == freezed ? _value.count : count as int,
      description:
          description == freezed ? _value.description : description as String,
      link: link == freezed ? _value.link : link as String,
      name: name == freezed ? _value.name : name as String,
      slug: slug == freezed ? _value.slug : slug as String,
      taxonomy: taxonomy == freezed ? _value.taxonomy : taxonomy as String,
      parent: parent == freezed ? _value.parent : parent as int,
      meta: meta == freezed ? _value.meta : meta as dynamic,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CategorySchema implements _CategorySchema {
  _$_CategorySchema(
      {this.id,
      this.count,
      this.description,
      this.link,
      this.name,
      this.slug,
      this.taxonomy,
      this.parent,
      this.meta});

  factory _$_CategorySchema.fromJson(Map<String, dynamic> json) =>
      _$_$_CategorySchemaFromJson(json);

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
  ///One of: "category", "post_tag", "nav_menu", "linkCategory", "postFormat"
  final String taxonomy;
  @override

  ///The parent term ID.
  final int parent;
  @override

  ///Meta fields.
  final dynamic meta;

  @override
  String toString() {
    return 'CategorySchema(id: $id, count: $count, description: $description, link: $link, name: $name, slug: $slug, taxonomy: $taxonomy, parent: $parent, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategorySchema &&
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
            (identical(other.parent, parent) ||
                const DeepCollectionEquality().equals(other.parent, parent)) &&
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
      const DeepCollectionEquality().hash(parent) ^
      const DeepCollectionEquality().hash(meta);

  @override
  _$CategorySchemaCopyWith<_CategorySchema> get copyWith =>
      __$CategorySchemaCopyWithImpl<_CategorySchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategorySchemaToJson(this);
  }
}

abstract class _CategorySchema implements CategorySchema {
  factory _CategorySchema(
      {int id,
      int count,
      String description,
      String link,
      String name,
      String slug,
      String taxonomy,
      int parent,
      dynamic meta}) = _$_CategorySchema;

  factory _CategorySchema.fromJson(Map<String, dynamic> json) =
      _$_CategorySchema.fromJson;

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
  ///One of: "category", "post_tag", "nav_menu", "linkCategory", "postFormat"
  String get taxonomy;
  @override

  ///The parent term ID.
  int get parent;
  @override

  ///Meta fields.
  dynamic get meta;
  @override
  _$CategorySchemaCopyWith<_CategorySchema> get copyWith;
}
