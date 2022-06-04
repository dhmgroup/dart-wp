// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobMeta _$$_JobMetaFromJson(Map<String, dynamic> json) => _$_JobMeta(
      jobLocation: json['_job_location'] as String?,
      application: json['_application'] as String?,
      companyName: json['_company_name'] as String?,
      companyWebsite: json['_company_website'] as String?,
      companyTagline: json['_company_tagline'] as String?,
      companyTwitter: json['_company_twitter'] as String?,
      companyVideo: json['_company_video'] as String?,
      filled: json['_filled'] as int?,
      featured: json['_featured'] as int?,
      jobExpires: json['_job_expires'] as String?,
    );

Map<String, dynamic> _$$_JobMetaToJson(_$_JobMeta instance) =>
    <String, dynamic>{
      '_job_location': instance.jobLocation,
      '_application': instance.application,
      '_company_name': instance.companyName,
      '_company_website': instance.companyWebsite,
      '_company_tagline': instance.companyTagline,
      '_company_twitter': instance.companyTwitter,
      '_company_video': instance.companyVideo,
      '_filled': instance.filled,
      '_featured': instance.featured,
      '_job_expires': instance.jobExpires,
    };
