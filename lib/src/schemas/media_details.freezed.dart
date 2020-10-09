// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'media_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MediaDetailsSchema _$MediaDetailsSchemaFromJson(Map<String, dynamic> json) {
  return _MediaDetailsSchema.fromJson(json);
}

/// @nodoc
class _$MediaDetailsSchemaTearOff {
  const _$MediaDetailsSchemaTearOff();

// ignore: unused_element
  _MediaDetailsSchema call(
      {int width,
      int height,
      String file,
      Map<String, dynamic> sizes,
      Map<String, dynamic> imageMeta}) {
    return _MediaDetailsSchema(
      width: width,
      height: height,
      file: file,
      sizes: sizes,
      imageMeta: imageMeta,
    );
  }

// ignore: unused_element
  MediaDetailsSchema fromJson(Map<String, Object> json) {
    return MediaDetailsSchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MediaDetailsSchema = _$MediaDetailsSchemaTearOff();

/// @nodoc
mixin _$MediaDetailsSchema {
  int get width;
  int get height;
  String get file;
  Map<String, dynamic> get sizes;
  Map<String, dynamic> get imageMeta;

  Map<String, dynamic> toJson();
  $MediaDetailsSchemaCopyWith<MediaDetailsSchema> get copyWith;
}

/// @nodoc
abstract class $MediaDetailsSchemaCopyWith<$Res> {
  factory $MediaDetailsSchemaCopyWith(
          MediaDetailsSchema value, $Res Function(MediaDetailsSchema) then) =
      _$MediaDetailsSchemaCopyWithImpl<$Res>;
  $Res call(
      {int width,
      int height,
      String file,
      Map<String, dynamic> sizes,
      Map<String, dynamic> imageMeta});
}

/// @nodoc
class _$MediaDetailsSchemaCopyWithImpl<$Res>
    implements $MediaDetailsSchemaCopyWith<$Res> {
  _$MediaDetailsSchemaCopyWithImpl(this._value, this._then);

  final MediaDetailsSchema _value;
  // ignore: unused_field
  final $Res Function(MediaDetailsSchema) _then;

  @override
  $Res call({
    Object width = freezed,
    Object height = freezed,
    Object file = freezed,
    Object sizes = freezed,
    Object imageMeta = freezed,
  }) {
    return _then(_value.copyWith(
      width: width == freezed ? _value.width : width as int,
      height: height == freezed ? _value.height : height as int,
      file: file == freezed ? _value.file : file as String,
      sizes: sizes == freezed ? _value.sizes : sizes as Map<String, dynamic>,
      imageMeta: imageMeta == freezed
          ? _value.imageMeta
          : imageMeta as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$MediaDetailsSchemaCopyWith<$Res>
    implements $MediaDetailsSchemaCopyWith<$Res> {
  factory _$MediaDetailsSchemaCopyWith(
          _MediaDetailsSchema value, $Res Function(_MediaDetailsSchema) then) =
      __$MediaDetailsSchemaCopyWithImpl<$Res>;
  @override
  $Res call(
      {int width,
      int height,
      String file,
      Map<String, dynamic> sizes,
      Map<String, dynamic> imageMeta});
}

/// @nodoc
class __$MediaDetailsSchemaCopyWithImpl<$Res>
    extends _$MediaDetailsSchemaCopyWithImpl<$Res>
    implements _$MediaDetailsSchemaCopyWith<$Res> {
  __$MediaDetailsSchemaCopyWithImpl(
      _MediaDetailsSchema _value, $Res Function(_MediaDetailsSchema) _then)
      : super(_value, (v) => _then(v as _MediaDetailsSchema));

  @override
  _MediaDetailsSchema get _value => super._value as _MediaDetailsSchema;

  @override
  $Res call({
    Object width = freezed,
    Object height = freezed,
    Object file = freezed,
    Object sizes = freezed,
    Object imageMeta = freezed,
  }) {
    return _then(_MediaDetailsSchema(
      width: width == freezed ? _value.width : width as int,
      height: height == freezed ? _value.height : height as int,
      file: file == freezed ? _value.file : file as String,
      sizes: sizes == freezed ? _value.sizes : sizes as Map<String, dynamic>,
      imageMeta: imageMeta == freezed
          ? _value.imageMeta
          : imageMeta as Map<String, dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MediaDetailsSchema implements _MediaDetailsSchema {
  _$_MediaDetailsSchema(
      {this.width, this.height, this.file, this.sizes, this.imageMeta});

  factory _$_MediaDetailsSchema.fromJson(Map<String, dynamic> json) =>
      _$_$_MediaDetailsSchemaFromJson(json);

  @override
  final int width;
  @override
  final int height;
  @override
  final String file;
  @override
  final Map<String, dynamic> sizes;
  @override
  final Map<String, dynamic> imageMeta;

  @override
  String toString() {
    return 'MediaDetailsSchema(width: $width, height: $height, file: $file, sizes: $sizes, imageMeta: $imageMeta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MediaDetailsSchema &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.sizes, sizes) ||
                const DeepCollectionEquality().equals(other.sizes, sizes)) &&
            (identical(other.imageMeta, imageMeta) ||
                const DeepCollectionEquality()
                    .equals(other.imageMeta, imageMeta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(sizes) ^
      const DeepCollectionEquality().hash(imageMeta);

  @override
  _$MediaDetailsSchemaCopyWith<_MediaDetailsSchema> get copyWith =>
      __$MediaDetailsSchemaCopyWithImpl<_MediaDetailsSchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MediaDetailsSchemaToJson(this);
  }
}

abstract class _MediaDetailsSchema implements MediaDetailsSchema {
  factory _MediaDetailsSchema(
      {int width,
      int height,
      String file,
      Map<String, dynamic> sizes,
      Map<String, dynamic> imageMeta}) = _$_MediaDetailsSchema;

  factory _MediaDetailsSchema.fromJson(Map<String, dynamic> json) =
      _$_MediaDetailsSchema.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  String get file;
  @override
  Map<String, dynamic> get sizes;
  @override
  Map<String, dynamic> get imageMeta;
  @override
  _$MediaDetailsSchemaCopyWith<_MediaDetailsSchema> get copyWith;
}
