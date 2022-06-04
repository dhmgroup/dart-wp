// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rendered_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RenderedObject _$RenderedObjectFromJson(Map<String, dynamic> json) {
  return _RenderedObject.fromJson(json);
}

/// @nodoc
mixin _$RenderedObject {
  /// Content as it exists in the database.
  ///
  String? get raw => throw _privateConstructorUsedError;

  /// Content transformed for display.
  ///
  String? get rendered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RenderedObjectCopyWith<RenderedObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenderedObjectCopyWith<$Res> {
  factory $RenderedObjectCopyWith(
          RenderedObject value, $Res Function(RenderedObject) then) =
      _$RenderedObjectCopyWithImpl<$Res>;
  $Res call({String? raw, String? rendered});
}

/// @nodoc
class _$RenderedObjectCopyWithImpl<$Res>
    implements $RenderedObjectCopyWith<$Res> {
  _$RenderedObjectCopyWithImpl(this._value, this._then);

  final RenderedObject _value;
  // ignore: unused_field
  final $Res Function(RenderedObject) _then;

  @override
  $Res call({
    Object? raw = freezed,
    Object? rendered = freezed,
  }) {
    return _then(_value.copyWith(
      raw: raw == freezed
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      rendered: rendered == freezed
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RenderedObjectCopyWith<$Res>
    implements $RenderedObjectCopyWith<$Res> {
  factory _$$_RenderedObjectCopyWith(
          _$_RenderedObject value, $Res Function(_$_RenderedObject) then) =
      __$$_RenderedObjectCopyWithImpl<$Res>;
  @override
  $Res call({String? raw, String? rendered});
}

/// @nodoc
class __$$_RenderedObjectCopyWithImpl<$Res>
    extends _$RenderedObjectCopyWithImpl<$Res>
    implements _$$_RenderedObjectCopyWith<$Res> {
  __$$_RenderedObjectCopyWithImpl(
      _$_RenderedObject _value, $Res Function(_$_RenderedObject) _then)
      : super(_value, (v) => _then(v as _$_RenderedObject));

  @override
  _$_RenderedObject get _value => super._value as _$_RenderedObject;

  @override
  $Res call({
    Object? raw = freezed,
    Object? rendered = freezed,
  }) {
    return _then(_$_RenderedObject(
      raw == freezed
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      rendered == freezed
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RenderedObject implements _RenderedObject {
  _$_RenderedObject(this.raw, this.rendered);

  factory _$_RenderedObject.fromJson(Map<String, dynamic> json) =>
      _$$_RenderedObjectFromJson(json);

  /// Content as it exists in the database.
  ///
  @override
  final String? raw;

  /// Content transformed for display.
  ///
  @override
  final String? rendered;

  @override
  String toString() {
    return 'RenderedObject(raw: $raw, rendered: $rendered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RenderedObject &&
            const DeepCollectionEquality().equals(other.raw, raw) &&
            const DeepCollectionEquality().equals(other.rendered, rendered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(raw),
      const DeepCollectionEquality().hash(rendered));

  @JsonKey(ignore: true)
  @override
  _$$_RenderedObjectCopyWith<_$_RenderedObject> get copyWith =>
      __$$_RenderedObjectCopyWithImpl<_$_RenderedObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RenderedObjectToJson(this);
  }
}

abstract class _RenderedObject implements RenderedObject {
  factory _RenderedObject(final String? raw, final String? rendered) =
      _$_RenderedObject;

  factory _RenderedObject.fromJson(Map<String, dynamic> json) =
      _$_RenderedObject.fromJson;

  @override

  /// Content as it exists in the database.
  ///
  String? get raw => throw _privateConstructorUsedError;
  @override

  /// Content transformed for display.
  ///
  String? get rendered => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RenderedObjectCopyWith<_$_RenderedObject> get copyWith =>
      throw _privateConstructorUsedError;
}
