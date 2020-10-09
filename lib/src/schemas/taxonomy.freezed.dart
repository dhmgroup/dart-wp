// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'taxonomy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TaxonomySchema _$TaxonomySchemaFromJson(Map<String, dynamic> json) {
  return _TaxonomySchema.fromJson(json);
}

/// @nodoc
class _$TaxonomySchemaTearOff {
  const _$TaxonomySchemaTearOff();

// ignore: unused_element
  _TaxonomySchema call(
      {Map<String, dynamic> capabilities,
      String description,
      bool hierarchical,
      Map<String, dynamic> labels,
      String name,
      String slug,
      bool showCloud,
      List<dynamic> types,
      String restBase,
      Map<String, dynamic> visibility}) {
    return _TaxonomySchema(
      capabilities: capabilities,
      description: description,
      hierarchical: hierarchical,
      labels: labels,
      name: name,
      slug: slug,
      showCloud: showCloud,
      types: types,
      restBase: restBase,
      visibility: visibility,
    );
  }

// ignore: unused_element
  TaxonomySchema fromJson(Map<String, Object> json) {
    return TaxonomySchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TaxonomySchema = _$TaxonomySchemaTearOff();

/// @nodoc
mixin _$TaxonomySchema {
  ///All capabilities used by the taxonomy.
  Map<String, dynamic> get capabilities;

  ///A human-readable description of the taxonomy.
  String get description;

  ///Whether or not the taxonomy should have children.
  bool get hierarchical;

  ///Human-readable labels for the taxonomy for various contexts.
  Map<String, dynamic> get labels;

  ///The title for the taxonomy.
  String get name;

  ///An alphanumeric identifier for the taxonomy.
  String get slug;

  ///Whether or not the term cloud should be displayed.
  bool get showCloud;

  ///Types associated with the taxonomy.
  List<dynamic> get types;

  ///REST base route for the taxonomy.
  String get restBase;

  ///The visibility settings for the taxonomy.
  Map<String, dynamic> get visibility;

  Map<String, dynamic> toJson();
  $TaxonomySchemaCopyWith<TaxonomySchema> get copyWith;
}

/// @nodoc
abstract class $TaxonomySchemaCopyWith<$Res> {
  factory $TaxonomySchemaCopyWith(
          TaxonomySchema value, $Res Function(TaxonomySchema) then) =
      _$TaxonomySchemaCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic> capabilities,
      String description,
      bool hierarchical,
      Map<String, dynamic> labels,
      String name,
      String slug,
      bool showCloud,
      List<dynamic> types,
      String restBase,
      Map<String, dynamic> visibility});
}

/// @nodoc
class _$TaxonomySchemaCopyWithImpl<$Res>
    implements $TaxonomySchemaCopyWith<$Res> {
  _$TaxonomySchemaCopyWithImpl(this._value, this._then);

  final TaxonomySchema _value;
  // ignore: unused_field
  final $Res Function(TaxonomySchema) _then;

  @override
  $Res call({
    Object capabilities = freezed,
    Object description = freezed,
    Object hierarchical = freezed,
    Object labels = freezed,
    Object name = freezed,
    Object slug = freezed,
    Object showCloud = freezed,
    Object types = freezed,
    Object restBase = freezed,
    Object visibility = freezed,
  }) {
    return _then(_value.copyWith(
      capabilities: capabilities == freezed
          ? _value.capabilities
          : capabilities as Map<String, dynamic>,
      description:
          description == freezed ? _value.description : description as String,
      hierarchical:
          hierarchical == freezed ? _value.hierarchical : hierarchical as bool,
      labels:
          labels == freezed ? _value.labels : labels as Map<String, dynamic>,
      name: name == freezed ? _value.name : name as String,
      slug: slug == freezed ? _value.slug : slug as String,
      showCloud: showCloud == freezed ? _value.showCloud : showCloud as bool,
      types: types == freezed ? _value.types : types as List<dynamic>,
      restBase: restBase == freezed ? _value.restBase : restBase as String,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$TaxonomySchemaCopyWith<$Res>
    implements $TaxonomySchemaCopyWith<$Res> {
  factory _$TaxonomySchemaCopyWith(
          _TaxonomySchema value, $Res Function(_TaxonomySchema) then) =
      __$TaxonomySchemaCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic> capabilities,
      String description,
      bool hierarchical,
      Map<String, dynamic> labels,
      String name,
      String slug,
      bool showCloud,
      List<dynamic> types,
      String restBase,
      Map<String, dynamic> visibility});
}

/// @nodoc
class __$TaxonomySchemaCopyWithImpl<$Res>
    extends _$TaxonomySchemaCopyWithImpl<$Res>
    implements _$TaxonomySchemaCopyWith<$Res> {
  __$TaxonomySchemaCopyWithImpl(
      _TaxonomySchema _value, $Res Function(_TaxonomySchema) _then)
      : super(_value, (v) => _then(v as _TaxonomySchema));

  @override
  _TaxonomySchema get _value => super._value as _TaxonomySchema;

  @override
  $Res call({
    Object capabilities = freezed,
    Object description = freezed,
    Object hierarchical = freezed,
    Object labels = freezed,
    Object name = freezed,
    Object slug = freezed,
    Object showCloud = freezed,
    Object types = freezed,
    Object restBase = freezed,
    Object visibility = freezed,
  }) {
    return _then(_TaxonomySchema(
      capabilities: capabilities == freezed
          ? _value.capabilities
          : capabilities as Map<String, dynamic>,
      description:
          description == freezed ? _value.description : description as String,
      hierarchical:
          hierarchical == freezed ? _value.hierarchical : hierarchical as bool,
      labels:
          labels == freezed ? _value.labels : labels as Map<String, dynamic>,
      name: name == freezed ? _value.name : name as String,
      slug: slug == freezed ? _value.slug : slug as String,
      showCloud: showCloud == freezed ? _value.showCloud : showCloud as bool,
      types: types == freezed ? _value.types : types as List<dynamic>,
      restBase: restBase == freezed ? _value.restBase : restBase as String,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility as Map<String, dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TaxonomySchema implements _TaxonomySchema {
  _$_TaxonomySchema(
      {this.capabilities,
      this.description,
      this.hierarchical,
      this.labels,
      this.name,
      this.slug,
      this.showCloud,
      this.types,
      this.restBase,
      this.visibility});

  factory _$_TaxonomySchema.fromJson(Map<String, dynamic> json) =>
      _$_$_TaxonomySchemaFromJson(json);

  @override

  ///All capabilities used by the taxonomy.
  final Map<String, dynamic> capabilities;
  @override

  ///A human-readable description of the taxonomy.
  final String description;
  @override

  ///Whether or not the taxonomy should have children.
  final bool hierarchical;
  @override

  ///Human-readable labels for the taxonomy for various contexts.
  final Map<String, dynamic> labels;
  @override

  ///The title for the taxonomy.
  final String name;
  @override

  ///An alphanumeric identifier for the taxonomy.
  final String slug;
  @override

  ///Whether or not the term cloud should be displayed.
  final bool showCloud;
  @override

  ///Types associated with the taxonomy.
  final List<dynamic> types;
  @override

  ///REST base route for the taxonomy.
  final String restBase;
  @override

  ///The visibility settings for the taxonomy.
  final Map<String, dynamic> visibility;

  @override
  String toString() {
    return 'TaxonomySchema(capabilities: $capabilities, description: $description, hierarchical: $hierarchical, labels: $labels, name: $name, slug: $slug, showCloud: $showCloud, types: $types, restBase: $restBase, visibility: $visibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaxonomySchema &&
            (identical(other.capabilities, capabilities) ||
                const DeepCollectionEquality()
                    .equals(other.capabilities, capabilities)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.hierarchical, hierarchical) ||
                const DeepCollectionEquality()
                    .equals(other.hierarchical, hierarchical)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.showCloud, showCloud) ||
                const DeepCollectionEquality()
                    .equals(other.showCloud, showCloud)) &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)) &&
            (identical(other.restBase, restBase) ||
                const DeepCollectionEquality()
                    .equals(other.restBase, restBase)) &&
            (identical(other.visibility, visibility) ||
                const DeepCollectionEquality()
                    .equals(other.visibility, visibility)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(capabilities) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(hierarchical) ^
      const DeepCollectionEquality().hash(labels) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(showCloud) ^
      const DeepCollectionEquality().hash(types) ^
      const DeepCollectionEquality().hash(restBase) ^
      const DeepCollectionEquality().hash(visibility);

  @override
  _$TaxonomySchemaCopyWith<_TaxonomySchema> get copyWith =>
      __$TaxonomySchemaCopyWithImpl<_TaxonomySchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaxonomySchemaToJson(this);
  }
}

abstract class _TaxonomySchema implements TaxonomySchema {
  factory _TaxonomySchema(
      {Map<String, dynamic> capabilities,
      String description,
      bool hierarchical,
      Map<String, dynamic> labels,
      String name,
      String slug,
      bool showCloud,
      List<dynamic> types,
      String restBase,
      Map<String, dynamic> visibility}) = _$_TaxonomySchema;

  factory _TaxonomySchema.fromJson(Map<String, dynamic> json) =
      _$_TaxonomySchema.fromJson;

  @override

  ///All capabilities used by the taxonomy.
  Map<String, dynamic> get capabilities;
  @override

  ///A human-readable description of the taxonomy.
  String get description;
  @override

  ///Whether or not the taxonomy should have children.
  bool get hierarchical;
  @override

  ///Human-readable labels for the taxonomy for various contexts.
  Map<String, dynamic> get labels;
  @override

  ///The title for the taxonomy.
  String get name;
  @override

  ///An alphanumeric identifier for the taxonomy.
  String get slug;
  @override

  ///Whether or not the term cloud should be displayed.
  bool get showCloud;
  @override

  ///Types associated with the taxonomy.
  List<dynamic> get types;
  @override

  ///REST base route for the taxonomy.
  String get restBase;
  @override

  ///The visibility settings for the taxonomy.
  Map<String, dynamic> get visibility;
  @override
  _$TaxonomySchemaCopyWith<_TaxonomySchema> get copyWith;
}
