// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostSchema _$_$_PostSchemaFromJson(Map<String, dynamic> json) {
  return _$_PostSchema(
    date: json['date'] as String,
    dateGmt: json['date_gmt'] as String,
    guid: json['guid'] as Map<String, dynamic>,
    id: json['id'] as int,
    link: json['link'] as String,
    modified: json['modified'] as String,
    modifiedGmt: json['modified_gmt'] as String,
    slug: json['slug'] as String,
    status: json['status'] as String,
    type: json['type'] as String,
    password: json['password'] as String,
    permalinkTemplate: json['permalink_template'] as String,
    generatedSlug: json['generated_slug'] as String,
    title: json['title'] as Map<String, dynamic>,
    content: json['content'] as Map<String, dynamic>,
    author: json['author'] as int,
    excerpt: json['excerpt'] as Map<String, dynamic>,
    featuredMedia: json['featured_media'] as int,
    commentStatus: json['comment_status'] as String,
    pingStatus: json['ping_status'] as String,
    format: json['format'] as String,
    meta: json['meta'] as List,
    sticky: json['sticky'] as bool,
    template: json['template'] as String,
    categories: json['categories'] as List,
    tags: json['tags'] as List,
    embedded: json['_embedded'] == null
        ? null
        : EmbeddedSchema.fromJson(json['_embedded'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PostSchemaToJson(_$_PostSchema instance) =>
    <String, dynamic>{
      'date': instance.date,
      'date_gmt': instance.dateGmt,
      'guid': instance.guid,
      'id': instance.id,
      'link': instance.link,
      'modified': instance.modified,
      'modified_gmt': instance.modifiedGmt,
      'slug': instance.slug,
      'status': instance.status,
      'type': instance.type,
      'password': instance.password,
      'permalink_template': instance.permalinkTemplate,
      'generated_slug': instance.generatedSlug,
      'title': instance.title,
      'content': instance.content,
      'author': instance.author,
      'excerpt': instance.excerpt,
      'featured_media': instance.featuredMedia,
      'comment_status': instance.commentStatus,
      'ping_status': instance.pingStatus,
      'format': instance.format,
      'meta': instance.meta,
      'sticky': instance.sticky,
      'template': instance.template,
      'categories': instance.categories,
      'tags': instance.tags,
      '_embedded': instance.embedded,
    };
