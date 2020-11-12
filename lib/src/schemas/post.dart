import 'package:freezed_annotation/freezed_annotation.dart';

import 'embedded.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class PostSchema with _$PostSchema {
  factory PostSchema({
    ///The date the object was published, in the site's timezone.
    String date,

    ///The date the object was published, as GMT.
    String dateGmt,

    ///The globally unique identifier for the object.
    Map<String, dynamic> guid,

    ///Unique identifier for the object.
    int id,

    ///URL to the object.
    String link,

    ///The date the object was last modified, in the site's timezone
    String modified,

    ///The date the object was last modified, as GMT.
    String modifiedGmt,

    ///An alphanumeric identifier for the object unique to its type.
    String slug,

    ///A named status for the object.
    ///
    /// One of: "publish", "future", "draft", "pending", "private"
    String status,

    ///Type of Post for the object.
    String type,

    ///A password to protect access to the content and excerpt.
    String password,

    ///Permalink template for the object.
    String permalinkTemplate,

    ///Slug automatically generated from the object title.
    String generatedSlug,

    ///The title for the object.
    Map<String, dynamic> title,

    ///The content for the object.
    Map<String, dynamic> content,

    ///The ID for the author of the object.
    int author,

    ///The excerpt for the object.
    Map<String, dynamic> excerpt,

    ///The ID of the featured media for the object.
    int featuredMedia,

    ///Whether or not comments are open on the object.
    ///
    /// One of: "open", "closed"
    String commentStatus,

    ///Whether or not the object can be pinged.
    ///
    /// One of: "open", "closed"
    String pingStatus,

    ///The format for the object.
    ///
    /// One of: "standard", "aside", "chat", "gallery", "link", "image", "quote", "status", "video", "audio"
    String format,

    ///Meta fields.
    @JsonKey(nullable: true) dynamic meta,

    ///Whether or not the object should be treated as sticky.
    bool sticky,

    ///The theme file to use to display the object.
    String template,

    ///The terms assigned to the object in the category taxonomy.
    List categories,

    ///The terms assigned to the object in the post_tag taxonomy.
    List tags,

    /// Embedded
    @JsonKey(name: '_embedded') EmbeddedSchema embedded,
  }) = _PostSchema;

  factory PostSchema.fromJson(Map<String, dynamic> json) =>
      _$PostSchemaFromJson(json);
}
