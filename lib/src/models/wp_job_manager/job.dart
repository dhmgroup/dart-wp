import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:wordpress_api/src/models/wp_job_manager/job_meta.dart';
import 'package:wordpress_api/src/utils.dart';

class Job {
  final int? id;
  final String? date;
  final String? dateGmt;
  final String? guid;
  final String? modified;
  final String? modifiedGmt;
  final String? slug;
  final String? status;
  final String? type;
  final String? link;
  final String? title;
  final String? content;
  final int? author;
  final int? featuredMedia;
  final String? template;
  final JobMeta? meta;
  final List<dynamic>? jobListingRegion;
  final List<dynamic>? jobCategories;
  final List<dynamic>? jobTypes;
  Job({
    this.id,
    this.date,
    this.dateGmt,
    this.guid,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.content,
    this.author,
    this.featuredMedia,
    this.template,
    this.meta,
    this.jobListingRegion,
    this.jobCategories,
    this.jobTypes,
  });

  Job copyWith({
    int? id,
    String? date,
    String? dateGmt,
    String? guid,
    String? modified,
    String? modifiedGmt,
    String? slug,
    String? status,
    String? type,
    String? link,
    String? title,
    String? content,
    int? author,
    int? featuredMedia,
    String? template,
    JobMeta? meta,
    List<int>? jobListingRegion,
    List<int>? jobCategories,
    List<int>? jobTypes,
  }) {
    return Job(
      id: id ?? this.id,
      date: date ?? this.date,
      dateGmt: dateGmt ?? this.dateGmt,
      guid: guid ?? this.guid,
      modified: modified ?? this.modified,
      modifiedGmt: modifiedGmt ?? this.modifiedGmt,
      slug: slug ?? this.slug,
      status: status ?? this.status,
      type: type ?? this.type,
      link: link ?? this.link,
      title: title ?? this.title,
      content: content ?? this.content,
      author: author ?? this.author,
      featuredMedia: featuredMedia ?? this.featuredMedia,
      template: template ?? this.template,
      meta: meta ?? this.meta,
      jobListingRegion: jobListingRegion ?? this.jobListingRegion,
      jobCategories: jobCategories ?? this.jobCategories,
      jobTypes: jobTypes ?? this.jobTypes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'date_gmt': dateGmt,
      'guid': guid,
      'modified': modified,
      'modified_gmt': modifiedGmt,
      'slug': slug,
      'status': status,
      'type': type,
      'link': link,
      'title': title,
      'content': content,
      'author': author,
      'featured_media': featuredMedia,
      'template': template,
      'meta': meta?.toMap(),
      'job_listing_region': jobListingRegion,
      'job-categories': jobCategories,
      'job-types': jobTypes,
    };
  }

  factory Job.fromMap(Map<String, dynamic> map) {

    return Job(
      id: map['id'],
      date: map['date'],
      dateGmt: map['date_gmt'],
      guid: map['guid']['rendered'],
      modified: map['modified'],
      modifiedGmt: map['modified_gmt'],
      slug: map['slug'],
      status: map['status'],
      type: map['type'],
      link: map['link'],
      title: Utils.renderHtml(map['title']['rendered']),
      content: Utils.renderHtml(map['content']['rendered']),
      author: map['author'],
      featuredMedia: map['featured_media'],
      template: map['template'],
      meta: JobMeta.fromMap(map['meta']),
      jobListingRegion: map['job_listing_region'],
      jobCategories: map['job-categories'],
      jobTypes: map['job-types'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Job.fromJson(String source) => Job.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Job(id: $id, date: $date, dateGmt: $dateGmt, guid: $guid, modified: $modified, modifiedGmt: $modifiedGmt, slug: $slug, status: $status, type: $type, link: $link, title: $title, content: $content, author: $author, featuredMedia: $featuredMedia, template: $template, meta: $meta, jobListingRegion: $jobListingRegion, jobCategories: $jobCategories, jobTypes: $jobTypes)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return o is Job &&
        o.id == id &&
        o.date == date &&
        o.dateGmt == dateGmt &&
        o.guid == guid &&
        o.modified == modified &&
        o.modifiedGmt == modifiedGmt &&
        o.slug == slug &&
        o.status == status &&
        o.type == type &&
        o.link == link &&
        o.title == title &&
        o.content == content &&
        o.author == author &&
        o.featuredMedia == featuredMedia &&
        o.template == template &&
        o.meta == meta &&
        listEquals(o.jobListingRegion, jobListingRegion) &&
        listEquals(o.jobCategories, jobCategories) &&
        listEquals(o.jobTypes, jobTypes);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        date.hashCode ^
        dateGmt.hashCode ^
        guid.hashCode ^
        modified.hashCode ^
        modifiedGmt.hashCode ^
        slug.hashCode ^
        status.hashCode ^
        type.hashCode ^
        link.hashCode ^
        title.hashCode ^
        content.hashCode ^
        author.hashCode ^
        featuredMedia.hashCode ^
        template.hashCode ^
        meta.hashCode ^
        jobListingRegion.hashCode ^
        jobCategories.hashCode ^
        jobTypes.hashCode;
  }
}

List<Job>? parseJobs(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<Job>((json) => Job.fromMap(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<Job>((json) => Job.fromMap(json))
        .toList();
  }
}
