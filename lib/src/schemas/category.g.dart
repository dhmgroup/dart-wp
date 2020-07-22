// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategorySchema _$CategorySchemaFromJson(Map<String, dynamic> json) {
  return CategorySchema(
    id: json['id'] as int,
    count: json['count'] as int,
    description: json['description'] as String,
    link: json['link'] as String,
    name: json['name'] as String,
    slug: json['slug'] as String,
    taxonomy: json['taxonomy'] as String,
    parent: json['parent'] as int,
    meta: json['meta'] as List,
  );
}

Map<String, dynamic> _$CategorySchemaToJson(CategorySchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'description': instance.description,
      'link': instance.link,
      'name': instance.name,
      'slug': instance.slug,
      'taxonomy': instance.taxonomy,
      'parent': instance.parent,
      'meta': instance.meta,
    };
