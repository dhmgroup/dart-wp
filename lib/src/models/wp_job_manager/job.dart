import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordpress_api/src/models/job_manager.dart';
import 'package:wordpress_api/src/models/wordpress/rendered_object.dart';

part 'job.freezed.dart';
part 'job.g.dart';

/// [Job] model is based on WP Job Manager.
@freezed
class Job with _$Job {
  factory Job({
    /// Unique identifier for the post.
    ///
    int? id,

    /// The date the post was published, in the site's timezone.
    ///
    /// `String?`
    String? date,

    /// The date the post was published, as GMT.
    ///
    @JsonKey(name: 'date_gmt') String? dateGmt,

    /// The globally unique identifier for the post.
    ///
    RenderedObject? guid,

    /// The date the post was last modified, in the site's timezone.
    ///
    String? modified,

    /// The date the post was last modified, as GMT.
    ///
    @JsonKey(name: 'modified_gmt') String? modifiedGmt,

    /// An alphanumeric identifier for the post unique to its type.
    ///
    String? slug,

    /// A named status for the object.
    ///
    /// One of: "publish", "future", "draft", "pending", "private"
    String? status,

    /// Type of post.
    ///
    String? type,

    /// URL to the post
    ///
    String? link,

    /// The title for the post.
    ///
    RenderedObject? title,

    /// The content for the post.
    ///
    RenderedObject? content,

    /// The ID for the author of the post.
    ///
    int? author,

    /// The ID of the featured media for the post.
    ///
    @JsonKey(name: 'featured_media') int? featuredMedia,

    /// The theme file to use to display the post.
    ///
    String? template,

    /// [JobMeta] that provides additional information about the job
    ///
    JobMeta? meta,

    /// A [List] of job listing region IDs
    ///
    @JsonKey(name: 'job_listing_region') List<int?>? jobListingRegion,

    /// A [List] of job category IDs
    ///
    @JsonKey(name: 'job-categories') List<int?>? jobCategories,

    /// A [List] of job type IDs
    ///
    @JsonKey(name: 'job-types') List<int?>? jobTypes,
  }) = _Job;

  factory Job.fromJson(Map<String, Object?> json) => _$JobFromJson(json);
}

/// Returns a list of jobs
///
List<Job>? parseJobs(dynamic data) {
  return data
      .cast<Map<String, dynamic>>()
      .map<Job>((json) => Job.fromJson(json))
      .toList();
}
