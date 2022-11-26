import 'dart:convert';

import 'package:collection/collection.dart';

class Media {
  ///The date the object was published, in the site's timezone.
  final String? date;

  ///The date the object was published, as GMT.
  final String? dateGmt;

  ///The globally unique identifier for the object.
  final String? guid;

  ///Unique identifier for the object.
  final int? id;

  ///URL to the object.
  final String? link;

  ///The date the object was last modified, in the site's timezone.
  final String? modified;

  ///The date the object was last modified, as GMT.
  final String? modifiedGmt;

  ///An alphanumeric identifier for the object unique to its type.
  final String? slug;

  ///A named status for the object.
  ///
  /// One of: "publish", "future", "draft", "pending", "private"
  final String? status;

  ///Type of Post for the object.
  final String? type;

  ///Permalink template for the object.
  final String? permalinkTemplate;

  ///Slug automatically generated from the object title.
  final String? generatedSlug;

  ///The title for the object.
  final String? title;

  ///The ID for the author of the object.
  final int? author;

  ///Whether or not comments are open on the object.
  ///
  /// One of: "open", "closed"
  final String? commentStatus;

  ///Whether or not the object can be pinged.
  ///
  /// One of: "open", "closed"
  final String? pingStatus;

  ///Meta fields.
  final dynamic meta;

  ///The theme file to use to display the object.
  final String? template;

  ///Alternative text to display when attachment is not displayed.
  final String? altText;

  ///The attachment caption.
  final String? caption;

  ///The attachment description.
  final String? description;

  ///Attachment type.
  ///
  /// One of: "image", "file"
  final String? mediaType;

  ///The attachment MIME type.
  final String? mimeType;

  ///Details about the media file, specific to its type.
  final Map<String, dynamic>? mediaDetails;

  ///The ID for the associated post of the attachment.
  final int? post;

  ///URL to the original attachment file.
  final String? sourceUrl;
  Media({
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
    this.permalinkTemplate,
    this.generatedSlug,
    this.title,
    this.author,
    this.commentStatus,
    this.pingStatus,
    this.meta,
    this.template,
    this.altText,
    this.caption,
    this.description,
    this.mediaType,
    this.mimeType,
    this.mediaDetails,
    this.post,
    this.sourceUrl,
  });

  Media copyWith({
    String? date,
    String? dateGmt,
    String? guid,
    int? id,
    String? link,
    String? modified,
    String? modifiedGmt,
    String? slug,
    String? status,
    String? type,
    String? permalinkTemplate,
    String? generatedSlug,
    String? title,
    int? author,
    String? commentStatus,
    String? pingStatus,
    dynamic meta,
    String? template,
    String? altText,
    String? caption,
    String? description,
    String? mediaType,
    String? mimeType,
    Map<String, dynamic>? mediaDetails,
    int? post,
    String? sourceUrl,
  }) {
    return Media(
      date: date ?? this.date,
      dateGmt: dateGmt ?? this.dateGmt,
      guid: guid ?? this.guid,
      id: id ?? this.id,
      link: link ?? this.link,
      modified: modified ?? this.modified,
      modifiedGmt: modifiedGmt ?? this.modifiedGmt,
      slug: slug ?? this.slug,
      status: status ?? this.status,
      type: type ?? this.type,
      permalinkTemplate: permalinkTemplate ?? this.permalinkTemplate,
      generatedSlug: generatedSlug ?? this.generatedSlug,
      title: title ?? this.title,
      author: author ?? this.author,
      commentStatus: commentStatus ?? this.commentStatus,
      pingStatus: pingStatus ?? this.pingStatus,
      meta: meta ?? this.meta,
      template: template ?? this.template,
      altText: altText ?? this.altText,
      caption: caption ?? this.caption,
      description: description ?? this.description,
      mediaType: mediaType ?? this.mediaType,
      mimeType: mimeType ?? this.mimeType,
      mediaDetails: mediaDetails ?? this.mediaDetails,
      post: post ?? this.post,
      sourceUrl: sourceUrl ?? this.sourceUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'date_gmt': dateGmt,
      'guid': guid,
      'id': id,
      'link': link,
      'modified': modified,
      'modified_gmt': modifiedGmt,
      'slug': slug,
      'status': status,
      'type': type,
      'permalink_template': permalinkTemplate,
      'generated_slug': generatedSlug,
      'title': title,
      'author': author,
      'comment_status': commentStatus,
      'ping_status': pingStatus,
      'meta': meta,
      'template': template,
      'altText': altText,
      'caption': caption,
      'description': description,
      'media_type': mediaType,
      'mime_type': mimeType,
      'media_details': mediaDetails,
      'post': post,
      'source_url': sourceUrl,
    };
  }

  factory Media.fromMap(Map<String, dynamic> map) {
    return Media(
      date: map['date'],
      dateGmt: map['date_gmt'],
      guid: map['guid']?['rendered'],
      id: map['id'],
      link: map['link'],
      modified: map['modified'],
      modifiedGmt: map['modified_gmt'],
      slug: map['slug'],
      status: map['status'],
      type: map['type'],
      permalinkTemplate: map['permalink_template'],
      generatedSlug: map['generated_slug'],
      title: map['title']?['rendered'],
      author: map['author'],
      commentStatus: map['comment_status'],
      pingStatus: map['ping_status'],
      meta: map['meta'],
      template: map['template'],
      altText: map['altText'],
      caption: map['caption']?['rendered'],
      description: map['description']?['rendered'],
      mediaType: map['media_type'],
      mimeType: map['mime_type'],
      mediaDetails: Map<String, dynamic>.from(map['media_details'] ?? {}),
      post: map['post'],
      sourceUrl: map['source_url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Media.fromJson(String source) => Media.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Media(date: $date, dateGmt: $dateGmt, guid: $guid, id: $id, link: $link, modified: $modified, modifiedGmt: $modifiedGmt, slug: $slug, status: $status, type: $type, permalinkTemplate: $permalinkTemplate, generatedSlug: $generatedSlug, title: $title, author: $author, commentStatus: $commentStatus, pingStatus: $pingStatus, meta: $meta, template: $template, altText: $altText, caption: $caption, description: $description, mediaType: $mediaType, mimeType: $mimeType, mediaDetails: $mediaDetails, post: $post, sourceUrl: $sourceUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other is Media &&
        other.date == date &&
        other.dateGmt == dateGmt &&
        other.guid == guid &&
        other.id == id &&
        other.link == link &&
        other.modified == modified &&
        other.modifiedGmt == modifiedGmt &&
        other.slug == slug &&
        other.status == status &&
        other.type == type &&
        other.permalinkTemplate == permalinkTemplate &&
        other.generatedSlug == generatedSlug &&
        other.title == title &&
        other.author == author &&
        other.commentStatus == commentStatus &&
        other.pingStatus == pingStatus &&
        other.meta == meta &&
        other.template == template &&
        other.altText == altText &&
        other.caption == caption &&
        other.description == description &&
        other.mediaType == mediaType &&
        other.mimeType == mimeType &&
        mapEquals(other.mediaDetails, mediaDetails) &&
        other.post == post &&
        other.sourceUrl == sourceUrl;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        dateGmt.hashCode ^
        guid.hashCode ^
        id.hashCode ^
        link.hashCode ^
        modified.hashCode ^
        modifiedGmt.hashCode ^
        slug.hashCode ^
        status.hashCode ^
        type.hashCode ^
        permalinkTemplate.hashCode ^
        generatedSlug.hashCode ^
        title.hashCode ^
        author.hashCode ^
        commentStatus.hashCode ^
        pingStatus.hashCode ^
        meta.hashCode ^
        template.hashCode ^
        altText.hashCode ^
        caption.hashCode ^
        description.hashCode ^
        mediaType.hashCode ^
        mimeType.hashCode ^
        mediaDetails.hashCode ^
        post.hashCode ^
        sourceUrl.hashCode;
  }
}

List<Media>? parseMedia(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<Media>((json) => Media.fromMap(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<Media>((json) => Media.fromMap(json))
        .toList();
  }
}
