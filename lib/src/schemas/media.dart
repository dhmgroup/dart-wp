import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_details.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
abstract class MediaSchema with _$MediaSchema {
  factory MediaSchema({
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

    ///The date the object was last modified, in the site's timezone.
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

    ///Permalink template for the object.
    String permalinkTemplate,

    ///Slug automatically generated from the object title.
    String generatedSlug,

    ///The title for the object.
    Map<String, dynamic> title,

    ///The ID for the author of the object.
    int author,

    ///Whether or not comments are open on the object.
    ///
    /// One of: "open", "closed"
    String commentStatus,

    ///Whether or not the object can be pinged.
    ///
    /// One of: "open", "closed"
    String pingStatus,

    ///Meta fields.
    List meta,

    ///The theme file to use to display the object.
    String template,

    ///Alternative text to display when attachment is not displayed.
    String altText,

    ///The attachment caption.
    Map<String, dynamic> caption,

    ///The attachment description.
    Map<String, dynamic> description,

    ///Attachment type.
    ///
    /// One of: "image", "file"
    String mediaType,

    ///The attachment MIME type.
    String mimeType,

    ///Details about the media file, specific to its type.
    MediaDetailsSchema mediaDetails,

    ///The ID for the associated post of the attachment.
    int post,

    ///URL to the original attachment file.
    String sourceUrl,

    ///List of the missing image sizes of the attachment.
    List missingImageSizes,
  }) = _MediaSchema;

  factory MediaSchema.fromJson(Map<String, dynamic> json) =>
      _$MediaSchemaFromJson(json);
}
