import 'package:json_annotation/json_annotation.dart';
import 'package:wordpress_api/src/schemas/media_details.dart';

part 'media.g.dart';

/// WordPress Media Endpoint Model /wp/v2/media
@JsonSerializable()
class MediaSchema {
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

  ///The date the object was last modified, in the site's timezone.
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

  ///Permalink template for the object.
  final String permalinkTemplate;

  ///Slug automatically generated from the object title.
  final String generatedSlug;

  ///The title for the object.
  final Map<String, dynamic> title;

  ///The ID for the author of the object.
  final int author;

  ///Whether or not comments are open on the object.
  ///
  /// One of: "open", "closed"
  final String commentStatus;

  ///Whether or not the object can be pinged.
  ///
  /// One of: "open", "closed"
  final String pingStatus;

  ///Meta fields.
  final List meta;

  ///The theme file to use to display the object.
  final String template;

  ///Alternative text to display when attachment is not displayed.
  final String altText;

  ///The attachment caption.
  final Map<String, dynamic> caption;

  ///The attachment description.
  final Map<String, dynamic> description;

  ///Attachment type.
  ///
  /// One of: "image", "file"
  final String mediaType;

  ///The attachment MIME type.
  final String mimeType;

  ///Details about the media file, specific to its type.
  final MediaDetailsSchema mediaDetails;

  ///The ID for the associated post of the attachment.
  final int post;

  ///URL to the original attachment file.
  final String sourceUrl;

  ///List of the missing image sizes of the attachment.
  final List missingImageSizes;

  MediaSchema({
    this.permalinkTemplate,
    this.generatedSlug,
    this.missingImageSizes,
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
    this.author,
    this.commentStatus,
    this.pingStatus,
    this.template,
    this.meta,
    this.description,
    this.caption,
    this.altText,
    this.mediaType,
    this.mimeType,
    this.mediaDetails,
    this.post,
    this.sourceUrl,
  });

  @override
  String toString() {
    return sourceUrl;
  }

  /// Generate MediaSchema Model from JSON
  factory MediaSchema.fromJson(Map<String, dynamic> data) =>
      _$MediaSchemaFromJson(data);

  /// Convert MediaSchema Model to JSON
  Map<String, dynamic> toJson() => _$MediaSchemaToJson(this);
}
