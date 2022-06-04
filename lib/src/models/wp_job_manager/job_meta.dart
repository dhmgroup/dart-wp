import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_meta.freezed.dart';
part 'job_meta.g.dart';

@freezed
class JobMeta with _$JobMeta {
  const factory JobMeta(
      {

      /// Location
      ///
      @JsonKey(name: '_job_location') String? jobLocation,

      /// Application Email/URL
      ///
      @JsonKey(name: '_application') String? application,

      /// Company Name
      ///
      @JsonKey(name: '_company_name') String? companyName,

      /// Company Website
      ///
      @JsonKey(name: '_company_website') String? companyWebsite,

      /// Company Tagline
      ///
      @JsonKey(name: '_company_tagline') String? companyTagline,

      /// Company Twitter
      ///
      @JsonKey(name: '_company_twitter') String? companyTwitter,

      /// Company Video
      ///
      @JsonKey(name: '_company_video') String? companyVideo,

      /// Position Filled
      ///
      @JsonKey(name: '_filled') int? filled,

      /// Featured Listing
      ///
      @JsonKey(name: '_featured') int? featured,

      ///Listing Expiry Date
      ///
      @JsonKey(name: '_job_expires') String? jobExpires}) = _JobMeta;

  factory JobMeta.fromJson(Map<String, Object?> json) =>
      _$JobMetaFromJson(json);
}
