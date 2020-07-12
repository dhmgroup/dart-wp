// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSchema _$SearchSchemaFromJson(Map<String, dynamic> json) {
  return SearchSchema(
    id: json['id'] as int,
    title: json['title'] as String,
    url: json['url'] as String,
    type: json['type'] as String,
    subtype: json['subtype'] as String,
  );
}

Map<String, dynamic> _$SearchSchemaToJson(SearchSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'type': instance.type,
      'subtype': instance.subtype,
    };
