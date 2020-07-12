// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxonomy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxonomySchema _$TaxonomySchemaFromJson(Map<String, dynamic> json) {
  return TaxonomySchema(
    capabilities: json['capabilities'] as Map<String, dynamic>,
    description: json['description'] as String,
    hierarchical: json['hierarchical'] as bool,
    labels: json['labels'] as Map<String, dynamic>,
    name: json['name'] as String,
    slug: json['slug'] as String,
    showCloud: json['show_cloud'] as bool,
    types: json['types'] as List,
    restBase: json['rest_base'] as String,
    visibility: json['visibility'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$TaxonomySchemaToJson(TaxonomySchema instance) =>
    <String, dynamic>{
      'capabilities': instance.capabilities,
      'description': instance.description,
      'hierarchical': instance.hierarchical,
      'labels': instance.labels,
      'name': instance.name,
      'slug': instance.slug,
      'show_cloud': instance.showCloud,
      'types': instance.types,
      'rest_base': instance.restBase,
      'visibility': instance.visibility,
    };
