import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

/// Wordpress Comments Endpoint Model /wp/v2/comments
@freezed
abstract class CommentSchema with _$CommentSchema {
  factory CommentSchema({
    ///Unique identifier for the object.
    int id,

    ///The ID of the user object, if author was a user.
    int author,

    ///Email address for the object author.
    String authorEmail,

    ///IP address for the object author.
    String authorIp,

    ///Display name for the object author.
    String authorName,

    ///URL for the object author.
    String authorUrl,

    ///User agent for the object author.
    String authorUserAgent,

    ///The content for the object.
    Map<String, dynamic> content,

    ///The date the object was published, in the site's timezone.
    String date,

    ///The date the object was published, as GMT.
    String dateGmt,

    ///URL to the object.
    String link,

    ///The ID for the parent of the object.
    int parent,

    /// The ID of the associated post object.
    int post,

    ///State of the object.
    String status,

    ///Type of Comment for the object.
    String type,

    ///Avatar URLs for the object author.
    Map<String, dynamic> authorAvatarUrls,

    ///Meta fields.
    List meta,
  }) = _CommentSchema;

  factory CommentSchema.fromJson(Map<String, dynamic> json) =>
      _$CommentSchemaFromJson(json);
}
