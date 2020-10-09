// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TagSchema _$_$_TagSchemaFromJson(Map<String, dynamic> json) {
  return _$_TagSchema(
    id: json['id'] as int,
    count: json['count'] as int,
    description: json['description'] as String,
    link: json['link'] as String,
    name: json['name'] as String,
    slug: json['slug'] as String,
    taxonomy: json['taxonomy'] as String,
    meta: json['meta'] as List,
  );
}

Map<String, dynamic> _$_$_TagSchemaToJson(_$_TagSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'description': instance.description,
      'link': instance.link,
      'name': instance.name,
      'slug': instance.slug,
      'taxonomy': instance.taxonomy,
      'meta': instance.meta,
    };
