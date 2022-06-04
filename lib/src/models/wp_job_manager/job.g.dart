// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      id: json['id'] as int?,
      date: json['date'] as String?,
      dateGmt: json['date_gmt'] as String?,
      guid: json['guid'] == null
          ? null
          : RenderedObject.fromJson(json['guid'] as Map<String, dynamic>),
      modified: json['modified'] as String?,
      modifiedGmt: json['modified_gmt'] as String?,
      slug: json['slug'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      link: json['link'] as String?,
      title: json['title'] == null
          ? null
          : RenderedObject.fromJson(json['title'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : RenderedObject.fromJson(json['content'] as Map<String, dynamic>),
      author: json['author'] as int?,
      featuredMedia: json['featured_media'] as int?,
      template: json['template'] as String?,
      meta: json['meta'] == null
          ? null
          : JobMeta.fromJson(json['meta'] as Map<String, dynamic>),
      jobListingRegion: (json['job_listing_region'] as List<dynamic>?)
          ?.map((e) => e as int?)
          .toList(),
      jobCategories: (json['job-categories'] as List<dynamic>?)
          ?.map((e) => e as int?)
          .toList(),
      jobTypes:
          (json['job-types'] as List<dynamic>?)?.map((e) => e as int?).toList(),
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'date_gmt': instance.dateGmt,
      'guid': instance.guid?.toJson(),
      'modified': instance.modified,
      'modified_gmt': instance.modifiedGmt,
      'slug': instance.slug,
      'status': instance.status,
      'type': instance.type,
      'link': instance.link,
      'title': instance.title?.toJson(),
      'content': instance.content?.toJson(),
      'author': instance.author,
      'featured_media': instance.featuredMedia,
      'template': instance.template,
      'meta': instance.meta?.toJson(),
      'job_listing_region': instance.jobListingRegion,
      'job-categories': instance.jobCategories,
      'job-types': instance.jobTypes,
    };
