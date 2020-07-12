// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaSchema _$MediaSchemaFromJson(Map<String, dynamic> json) {
  return MediaSchema(
    permalinkTemplate: json['permalink_template'] as String,
    generatedSlug: json['generated_slug'] as String,
    missingImageSizes: json['missing_image_sizes'] as List,
    id: json['id'] as int,
    date: json['date'] as String,
    dateGmt: json['date_gmt'] as String,
    guid: json['guid'] as Map<String, dynamic>,
    modified: json['modified'] as String,
    modifiedGmt: json['modified_gmt'] as String,
    slug: json['slug'] as String,
    status: json['status'] as String,
    type: json['type'] as String,
    link: json['link'] as String,
    title: json['title'] as Map<String, dynamic>,
    author: json['author'] as int,
    commentStatus: json['comment_status'] as String,
    pingStatus: json['ping_status'] as String,
    template: json['template'] as String,
    meta: json['meta'] as Map<String, dynamic>,
    description: json['description'] as Map<String, dynamic>,
    caption: json['caption'] as Map<String, dynamic>,
    altText: json['alt_text'] as String,
    mediaType: json['media_type'] as String,
    mimeType: json['mime_type'] as String,
    mediaDetails: json['media_details'] as Map<String, dynamic>,
    post: json['post'] as int,
    sourceUrl: json['source_url'] as String,
  );
}

Map<String, dynamic> _$MediaSchemaToJson(MediaSchema instance) =>
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
      'permalink_template': instance.permalinkTemplate,
      'generated_slug': instance.generatedSlug,
      'title': instance.title,
      'author': instance.author,
      'comment_status': instance.commentStatus,
      'ping_status': instance.pingStatus,
      'meta': instance.meta,
      'template': instance.template,
      'alt_text': instance.altText,
      'caption': instance.caption,
      'description': instance.description,
      'media_type': instance.mediaType,
      'mime_type': instance.mimeType,
      'media_details': instance.mediaDetails,
      'post': instance.post,
      'source_url': instance.sourceUrl,
      'missing_image_sizes': instance.missingImageSizes,
    };
