import 'package:json_annotation/json_annotation.dart';

part 'page.g.dart';

/// WordPress Page Endpoint Model /wp/v2/pages
@JsonSerializable()
class PageSchema {
  ///The date the object was published, in the site's timezone.
  final List date;

  ///The date the object was published, as GMT.
  final List dateGmt;

  ///The globally unique identifier for the object.
  final Map<String, dynamic> guid;

  ///Unique identifier for the object.
  final int id;

  ///URL to the object.
  final String link;

  ///The date the object was last modified, in the site's timezone.
  final String modified;

  ///The date the object was last modified, as GMT.
  final String modifitedGmt;

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

  ///The ID for the parent of the object.
  final int parent;

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

  ///The order of the object in relation to other object of its type.
  final int menuOrder;

  ///Meta fields.
  final Map<String, dynamic> meta;

  ///The theme file to use to display the object.
  final String template;

  PageSchema({
    this.date,
    this.dateGmt,
    this.guid,
    this.id,
    this.link,
    this.modified,
    this.modifitedGmt,
    this.slug,
    this.status,
    this.type,
    this.password,
    this.permalinkTemplate,
    this.generatedSlug,
    this.parent,
    this.title,
    this.content,
    this.author,
    this.excerpt,
    this.featuredMedia,
    this.commentStatus,
    this.pingStatus,
    this.menuOrder,
    this.meta,
    this.template,
  });

  /// Generate PageSchema Model from JSON
  factory PageSchema.fromJson(Map<String, dynamic> data) =>
      _$PageSchemaFromJson(data);

  /// Convert PageSchema Model to JSON
  Map<String, dynamic> toJson() => _$PageSchemaToJson(this);
}
