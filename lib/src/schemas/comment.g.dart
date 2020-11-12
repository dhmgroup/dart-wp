// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentSchema _$_$_CommentSchemaFromJson(Map<String, dynamic> json) {
  return _$_CommentSchema(
    id: json['id'] as int,
    author: json['author'] as int,
    authorEmail: json['author_email'] as String,
    authorIp: json['author_ip'] as String,
    authorName: json['author_name'] as String,
    authorUrl: json['author_url'] as String,
    authorUserAgent: json['author_user_agent'] as String,
    content: json['content'] as Map<String, dynamic>,
    date: json['date'] as String,
    dateGmt: json['date_gmt'] as String,
    link: json['link'] as String,
    parent: json['parent'] as int,
    post: json['post'] as int,
    status: json['status'] as String,
    type: json['type'] as String,
    authorAvatarUrls: json['author_avatar_urls'] as Map<String, dynamic>,
    meta: json['meta'],
  );
}

Map<String, dynamic> _$_$_CommentSchemaToJson(_$_CommentSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'author_email': instance.authorEmail,
      'author_ip': instance.authorIp,
      'author_name': instance.authorName,
      'author_url': instance.authorUrl,
      'author_user_agent': instance.authorUserAgent,
      'content': instance.content,
      'date': instance.date,
      'date_gmt': instance.dateGmt,
      'link': instance.link,
      'parent': instance.parent,
      'post': instance.post,
      'status': instance.status,
      'type': instance.type,
      'author_avatar_urls': instance.authorAvatarUrls,
      'meta': instance.meta,
    };
