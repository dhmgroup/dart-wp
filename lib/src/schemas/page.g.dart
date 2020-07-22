// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageSchema _$PageSchemaFromJson(Map<String, dynamic> json) {
  return PageSchema(
    date: json['date'] as List,
    dateGmt: json['date_gmt'] as List,
    guid: json['guid'] as Map<String, dynamic>,
    id: json['id'] as int,
    link: json['link'] as String,
    modified: json['modified'] as String,
    modifitedGmt: json['modifited_gmt'] as String,
    slug: json['slug'] as String,
    status: json['status'] as String,
    type: json['type'] as String,
    password: json['password'] as String,
    permalinkTemplate: json['permalink_template'] as String,
    generatedSlug: json['generated_slug'] as String,
    parent: json['parent'] as int,
    title: json['title'] as Map<String, dynamic>,
    content: json['content'] as Map<String, dynamic>,
    author: json['author'] as int,
    excerpt: json['excerpt'] as Map<String, dynamic>,
    featuredMedia: json['featured_media'] as int,
    commentStatus: json['comment_status'] as String,
    pingStatus: json['ping_status'] as String,
    menuOrder: json['menu_order'] as int,
    meta: json['meta'] as List,
    template: json['template'] as String,
  );
}

Map<String, dynamic> _$PageSchemaToJson(PageSchema instance) =>
    <String, dynamic>{
      'date': instance.date,
      'date_gmt': instance.dateGmt,
      'guid': instance.guid,
      'id': instance.id,
      'link': instance.link,
      'modified': instance.modified,
      'modifited_gmt': instance.modifitedGmt,
      'slug': instance.slug,
      'status': instance.status,
      'type': instance.type,
      'password': instance.password,
      'permalink_template': instance.permalinkTemplate,
      'generated_slug': instance.generatedSlug,
      'parent': instance.parent,
      'title': instance.title,
      'content': instance.content,
      'author': instance.author,
      'excerpt': instance.excerpt,
      'featured_media': instance.featuredMedia,
      'comment_status': instance.commentStatus,
      'ping_status': instance.pingStatus,
      'menu_order': instance.menuOrder,
      'meta': instance.meta,
      'template': instance.template,
    };
