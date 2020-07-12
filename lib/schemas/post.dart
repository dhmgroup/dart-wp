import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

/// WordPress Post Endpoint Model /wp/v2/posts
@JsonSerializable()
class PostSchema {
  ///The date the object was published, in the site's timezone.
  final String date;

  ///The date the object was published, as GMT.
  final String dateGmt;

  ///The globally unique identifier for the object.
  final Map<String, dynamic> guid;

  ///Unique identifier for the object.
  final int id;

  ///URL to the object.
  final String link;

  ///The date the object was last modified, in the site's timezone
  final String modified;

  ///The date the object was last modified, as GMT.
  final String modifiedGmt;

  ///An alphanumeric identifier for the object unique to its type.
  final String slug;

  ///A named status for the object.
  ///
  /// One of: "publish", "future", "draft", "pending", "private"
  final String status;

  ///Type of Post for the object.
  final String type;

  ///A password to protect access to the content and excerpt.
  final String password;

  ///Permalink template for the object.
  final String permalinkTemplate;

  ///Slug automatically generated from the object title.
  final String generatedSlug;

  ///The title for the object.
  final Map<String, dynamic> title;

  ///The content for the object.
  final Map<String, dynamic> content;

  ///The ID for the author of the object.
  final int author;

  ///The excerpt for the object.
  final Map<String, dynamic> excerpt;

  ///The ID of the featured media for the object.
  final int featuredMedia;

  ///Whether or not comments are open on the object.
  ///
  /// One of: "open", "closed"
  final String commentStatus;

  ///Whether or not the object can be pinged.
  ///
  /// One of: "open", "closed"
  final String pingStatus;

  ///The format for the object.
  ///
  /// One of: "standard", "aside", "chat", "gallery", "link", "image", "quote", "status", "video", "audio"
  final String format;

  ///Meta fields.
  final Map<String, dynamic> meta;

  ///Whether or not the object should be treated as sticky.
  final bool sticky;

  ///The theme file to use to display the object.
  final String template;

  ///The terms assigned to the object in the category taxonomy.
  final List categories;

  ///The terms assigned to the object in the post_tag taxonomy.
  final List tags;

  PostSchema({
    this.date,
    this.dateGmt,
    this.guid,
    this.id,
    this.link,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.password,
    this.permalinkTemplate,
    this.generatedSlug,
    this.title,
    this.content,
    this.author,
    this.excerpt,
    this.featuredMedia,
    this.commentStatus,
    this.pingStatus,
    this.format,
    this.meta,
    this.sticky,
    this.template,
    this.categories,
    this.tags,
  });

  /// Generate PostSchema Model from JSON
  factory PostSchema.fromJson(Map<String, dynamic> data) =>
      _$PostSchemaFromJson(data);

  /// Convert PostSchema Model to JSON
  Map<String, dynamic> toJson() => _$PostSchemaToJson(this);
}
