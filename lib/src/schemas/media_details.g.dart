// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaDetailsSchema _$_$_MediaDetailsSchemaFromJson(
    Map<String, dynamic> json) {
  return _$_MediaDetailsSchema(
    width: json['width'] as int,
    height: json['height'] as int,
    file: json['file'] as String,
    sizes: json['sizes'] as Map<String, dynamic>,
    imageMeta: json['image_meta'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$_MediaDetailsSchemaToJson(
        _$_MediaDetailsSchema instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'file': instance.file,
      'sizes': instance.sizes,
      'image_meta': instance.imageMeta,
    };
