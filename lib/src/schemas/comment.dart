import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

/// Wordpress Comments Endpoint Model /wp/v2/comments
@JsonSerializable()
class CommentSchema {
  ///Unique identifier for the object.
  final int id;

  ///The ID of the user object, if author was a user.
  final int author;

  ///Email address for the object author.
  final String authorEmail;

  ///IP address for the object author.
  final String authorIp;

  ///Display name for the object author.
  final String authorName;

  ///URL for the object author.
  final String authorUrl;

  ///User agent for the object author.
  final String authorUserAgent;

  ///The content for the object.
  final Map<String, dynamic> content;

  ///The date the object was published, in the site's timezone.
  final String date;

  ///The date the object was published, as GMT.
  final String dateGmt;

  ///URL to the object.
  final String link;

  ///The ID for the parent of the object.
  final int parent;

  /// The ID of the associated post object.
  final int post;

  ///State of the object.
  final String status;

  ///Type of Comment for the object.
  final String type;

  ///Avatar URLs for the object author.
  final Map<String, dynamic> authorAvatarUrls;

  ///Meta fields.
  final List meta;

  CommentSchema({
    this.id,
    this.author,
    this.authorEmail,
    this.authorIp,
    this.authorName,
    this.authorUrl,
    this.authorUserAgent,
    this.content,
    this.date,
    this.dateGmt,
    this.link,
    this.parent,
    this.post,
    this.status,
    this.type,
    this.authorAvatarUrls,
    this.meta,
  });

  /// Generate CommentSchema Model from JSON
  factory CommentSchema.fromJson(Map<String, dynamic> data) =>
      _$CommentSchemaFromJson(data);

  /// Convert CommentSchema Model to JSON
  Map<String, dynamic> toJson() => _$CommentSchemaToJson(this);
}
