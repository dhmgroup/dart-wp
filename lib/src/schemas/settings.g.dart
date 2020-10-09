// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsSchema _$_$_SettingsSchemaFromJson(Map<String, dynamic> json) {
  return _$_SettingsSchema(
    title: json['title'] as String,
    description: json['description'] as String,
    url: json['url'] as String,
    email: json['email'] as String,
    timezone: json['timezone'] as String,
    dateFormat: json['date_format'] as String,
    timeFormat: json['time_format'] as String,
    startOfWeek: json['start_of_week'] as int,
    language: json['language'] as String,
    useSmilies: json['use_smilies'] as bool,
    defaultCategory: json['default_category'] as int,
    defaultPostFormat: json['default_post_format'] as String,
    postsPerPage: json['posts_per_page'] as int,
    defaultPingStatus: json['default_ping_status'] as String,
    defaultCommentStatus: json['default_comment_status'] as String,
  );
}

Map<String, dynamic> _$_$_SettingsSchemaToJson(_$_SettingsSchema instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'email': instance.email,
      'timezone': instance.timezone,
      'date_format': instance.dateFormat,
      'time_format': instance.timeFormat,
      'start_of_week': instance.startOfWeek,
      'language': instance.language,
      'use_smilies': instance.useSmilies,
      'default_category': instance.defaultCategory,
      'default_post_format': instance.defaultPostFormat,
      'posts_per_page': instance.postsPerPage,
      'default_ping_status': instance.defaultPingStatus,
      'default_comment_status': instance.defaultCommentStatus,
    };
