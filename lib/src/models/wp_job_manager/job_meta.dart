import 'dart:convert';

class JobMeta {
  final String? jobLocation;
  final String? application;
  final String? companyName;
  final String? companyWebsite;
  final String? companyTagline;
  final String? companyTwitter;
  final String? companyVideo;
  final int? filled;
  final int? featured;
  JobMeta({
    this.jobLocation,
    this.application,
    this.companyName,
    this.companyWebsite,
    this.companyTagline,
    this.companyTwitter,
    this.companyVideo,
    this.filled,
    this.featured,
  });

  JobMeta copyWith({
    String? jobLocation,
    String? application,
    String? companyName,
    String? companyWebsite,
    String? companyTagline,
    String? companyTwitter,
    String? companyVideo,
    int? filled,
    int? featured,
  }) {
    return JobMeta(
      jobLocation: jobLocation ?? this.jobLocation,
      application: application ?? this.application,
      companyName: companyName ?? this.companyName,
      companyWebsite: companyWebsite ?? this.companyWebsite,
      companyTagline: companyTagline ?? this.companyTagline,
      companyTwitter: companyTwitter ?? this.companyTwitter,
      companyVideo: companyVideo ?? this.companyVideo,
      filled: filled ?? this.filled,
      featured: featured ?? this.featured,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '_job_location': jobLocation,
      '_application': application,
      '_company_name': companyName,
      '_company_website': companyWebsite,
      '_company_tagline': companyTagline,
      '_company_twitter': companyTwitter,
      '_company_video': companyVideo,
      '_filled': filled,
      '_featured': featured,
    };
  }

  factory JobMeta.fromMap(Map<String, dynamic> map) {

    return JobMeta(
      jobLocation: map['_job_location'],
      application: map['_application'],
      companyName: map['_company_name'],
      companyWebsite: map['_company_website'],
      companyTagline: map['_company_tagline'],
      companyTwitter: map['_company_twitter'],
      companyVideo: map['_company_video'],
      filled: map['_filled'],
      featured: map['_featured'],
    );
  }

  String toJson() => json.encode(toMap());

  factory JobMeta.fromJson(String source) =>
      JobMeta.fromMap(json.decode(source));

  @override
  String toString() {
    return 'JobMeta(jobLocation: $jobLocation, application: $application, companyName: $companyName, companyWebsite: $companyWebsite, companyTagline: $companyTagline, companyTwitter: $companyTwitter, companyVideo: $companyVideo, filled: $filled, featured: $featured)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is JobMeta &&
        o.jobLocation == jobLocation &&
        o.application == application &&
        o.companyName == companyName &&
        o.companyWebsite == companyWebsite &&
        o.companyTagline == companyTagline &&
        o.companyTwitter == companyTwitter &&
        o.companyVideo == companyVideo &&
        o.filled == filled &&
        o.featured == featured;
  }

  @override
  int get hashCode {
    return jobLocation.hashCode ^
        application.hashCode ^
        companyName.hashCode ^
        companyWebsite.hashCode ^
        companyTagline.hashCode ^
        companyTwitter.hashCode ^
        companyVideo.hashCode ^
        filled.hashCode ^
        featured.hashCode;
  }
}
