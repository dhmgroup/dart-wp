// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SearchSchema _$SearchSchemaFromJson(Map<String, dynamic> json) {
  return _SearchSchema.fromJson(json);
}

/// @nodoc
class _$SearchSchemaTearOff {
  const _$SearchSchemaTearOff();

// ignore: unused_element
  _SearchSchema call(
      {int id, String title, String url, String type, String subtype}) {
    return _SearchSchema(
      id: id,
      title: title,
      url: url,
      type: type,
      subtype: subtype,
    );
  }

// ignore: unused_element
  SearchSchema fromJson(Map<String, Object> json) {
    return SearchSchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SearchSchema = _$SearchSchemaTearOff();

/// @nodoc
mixin _$SearchSchema {
  ///Unique identifier for the object.
  int get id;

  ///The title for the object.
  String get title;

  ///URL to the object.
  String get url;

  ///Object type.
  ///
  /// One of: "post"
  String get type;

  ///Object subtype.
  ///
  /// One of: "post", "page"
  String get subtype;

  Map<String, dynamic> toJson();
  $SearchSchemaCopyWith<SearchSchema> get copyWith;
}

/// @nodoc
abstract class $SearchSchemaCopyWith<$Res> {
  factory $SearchSchemaCopyWith(
          SearchSchema value, $Res Function(SearchSchema) then) =
      _$SearchSchemaCopyWithImpl<$Res>;
  $Res call({int id, String title, String url, String type, String subtype});
}

/// @nodoc
class _$SearchSchemaCopyWithImpl<$Res> implements $SearchSchemaCopyWith<$Res> {
  _$SearchSchemaCopyWithImpl(this._value, this._then);

  final SearchSchema _value;
  // ignore: unused_field
  final $Res Function(SearchSchema) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object url = freezed,
    Object type = freezed,
    Object subtype = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
      type: type == freezed ? _value.type : type as String,
      subtype: subtype == freezed ? _value.subtype : subtype as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchSchemaCopyWith<$Res>
    implements $SearchSchemaCopyWith<$Res> {
  factory _$SearchSchemaCopyWith(
          _SearchSchema value, $Res Function(_SearchSchema) then) =
      __$SearchSchemaCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String url, String type, String subtype});
}

/// @nodoc
class __$SearchSchemaCopyWithImpl<$Res> extends _$SearchSchemaCopyWithImpl<$Res>
    implements _$SearchSchemaCopyWith<$Res> {
  __$SearchSchemaCopyWithImpl(
      _SearchSchema _value, $Res Function(_SearchSchema) _then)
      : super(_value, (v) => _then(v as _SearchSchema));

  @override
  _SearchSchema get _value => super._value as _SearchSchema;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object url = freezed,
    Object type = freezed,
    Object subtype = freezed,
  }) {
    return _then(_SearchSchema(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
      type: type == freezed ? _value.type : type as String,
      subtype: subtype == freezed ? _value.subtype : subtype as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SearchSchema implements _SearchSchema {
  _$_SearchSchema({this.id, this.title, this.url, this.type, this.subtype});

  factory _$_SearchSchema.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchSchemaFromJson(json);

  @override

  ///Unique identifier for the object.
  final int id;
  @override

  ///The title for the object.
  final String title;
  @override

  ///URL to the object.
  final String url;
  @override

  ///Object type.
  ///
  /// One of: "post"
  final String type;
  @override

  ///Object subtype.
  ///
  /// One of: "post", "page"
  final String subtype;

  @override
  String toString() {
    return 'SearchSchema(id: $id, title: $title, url: $url, type: $type, subtype: $subtype)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchSchema &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.subtype, subtype) ||
                const DeepCollectionEquality().equals(other.subtype, subtype)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(subtype);

  @override
  _$SearchSchemaCopyWith<_SearchSchema> get copyWith =>
      __$SearchSchemaCopyWithImpl<_SearchSchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchSchemaToJson(this);
  }
}

abstract class _SearchSchema implements SearchSchema {
  factory _SearchSchema(
      {int id,
      String title,
      String url,
      String type,
      String subtype}) = _$_SearchSchema;

  factory _SearchSchema.fromJson(Map<String, dynamic> json) =
      _$_SearchSchema.fromJson;

  @override

  ///Unique identifier for the object.
  int get id;
  @override

  ///The title for the object.
  String get title;
  @override

  ///URL to the object.
  String get url;
  @override

  ///Object type.
  ///
  /// One of: "post"
  String get type;
  @override

  ///Object subtype.
  ///
  /// One of: "post", "page"
  String get subtype;
  @override
  _$SearchSchemaCopyWith<_SearchSchema> get copyWith;
}
