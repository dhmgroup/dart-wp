// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchSchema _$_$_SearchSchemaFromJson(Map<String, dynamic> json) {
  return _$_SearchSchema(
    id: json['id'] as int,
    title: json['title'] as String,
    url: json['url'] as String,
    type: json['type'] as String,
    subtype: json['subtype'] as String,
  );
}

Map<String, dynamic> _$_$_SearchSchemaToJson(_$_SearchSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'type': instance.type,
      'subtype': instance.subtype,
    };
