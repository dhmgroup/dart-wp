import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';
part 'page.g.dart';

@freezed
abstract class PageSchema with _$PageSchema {
  factory PageSchema({
    ///The date the object was published, in the site's timezone.
    List date,

    ///The date the object was published, as GMT.
    List dateGmt,

    ///The globally unique identifier for the object.
    Map<String, dynamic> guid,

    ///Unique identifier for the object.
    int id,

    ///URL to the object.
    String link,

    ///The date the object was last modified, in the site's timezone.
    String modified,

    ///The date the object was last modified, as GMT.
    String modifitedGmt,

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

    ///The ID for the parent of the object.
    int parent,

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

    ///The order of the object in relation to other object of its type.
    int menuOrder,

    ///Meta fields.
    dynamic meta,

    ///The theme file to use to display the object.
    String template,
  }) = _PageSchema;

  factory PageSchema.fromJson(Map<String, dynamic> json) =>
      _$PageSchemaFromJson(json);
}
