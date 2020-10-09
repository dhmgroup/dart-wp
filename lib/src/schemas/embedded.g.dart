// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embedded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmbeddedSchema _$_$_EmbeddedSchemaFromJson(Map<String, dynamic> json) {
  return _$_EmbeddedSchema(
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : UserSchema.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    replies: (json['replies'] as List)
        ?.map((e) => (e as List)
            ?.map((e) => e == null
                ? null
                : CommentSchema.fromJson(e as Map<String, dynamic>))
            ?.toList())
        ?.toList(),
    media: (json['wp:featuredmedia'] as List)
        ?.map((e) =>
            e == null ? null : MediaSchema.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    terms: (json['wp:terms'] as List)?.map((e) => e as List)?.toList(),
  );
}

Map<String, dynamic> _$_$_EmbeddedSchemaToJson(_$_EmbeddedSchema instance) =>
    <String, dynamic>{
      'author': instance.author,
      'replies': instance.replies,
      'wp:featuredmedia': instance.media,
      'wp:terms': instance.terms,
    };
