// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MediaSchema _$MediaSchemaFromJson(Map<String, dynamic> json) {
  return _MediaSchema.fromJson(json);
}

/// @nodoc
class _$MediaSchemaTearOff {
  const _$MediaSchemaTearOff();

// ignore: unused_element
  _MediaSchema call(
      {String date,
      String dateGmt,
      Map<String, dynamic> guid,
      int id,
      String link,
      String modified,
      String modifiedGmt,
      String slug,
      String status,
      String type,
      String permalinkTemplate,
      String generatedSlug,
      Map<String, dynamic> title,
      int author,
      String commentStatus,
      String pingStatus,
      dynamic meta,
      String template,
      String altText,
      Map<String, dynamic> caption,
      Map<String, dynamic> description,
      String mediaType,
      String mimeType,
      MediaDetailsSchema mediaDetails,
      int post,
      String sourceUrl,
      List<dynamic> missingImageSizes}) {
    return _MediaSchema(
      date: date,
      dateGmt: dateGmt,
      guid: guid,
      id: id,
      link: link,
      modified: modified,
      modifiedGmt: modifiedGmt,
      slug: slug,
      status: status,
      type: type,
      permalinkTemplate: permalinkTemplate,
      generatedSlug: generatedSlug,
      title: title,
      author: author,
      commentStatus: commentStatus,
      pingStatus: pingStatus,
      meta: meta,
      template: template,
      altText: altText,
      caption: caption,
      description: description,
      mediaType: mediaType,
      mimeType: mimeType,
      mediaDetails: mediaDetails,
      post: post,
      sourceUrl: sourceUrl,
      missingImageSizes: missingImageSizes,
    );
  }

// ignore: unused_element
  MediaSchema fromJson(Map<String, Object> json) {
    return MediaSchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MediaSchema = _$MediaSchemaTearOff();

/// @nodoc
mixin _$MediaSchema {
  ///The date the object was published, in the site's timezone.
  String get date;

  ///The date the object was published, as GMT.
  String get dateGmt;

  ///The globally unique identifier for the object.
  Map<String, dynamic> get guid;

  ///Unique identifier for the object.
  int get id;

  ///URL to the object.
  String get link;

  ///The date the object was last modified, in the site's timezone.
  String get modified;

  ///The date the object was last modified, as GMT.
  String get modifiedGmt;

  ///An alphanumeric identifier for the object unique to its type.
  String get slug;

  ///A named status for the object.
  ///
  /// One of: "publish", "future", "draft", "pending", "private"
  String get status;

  ///Type of Post for the object.
  String get type;

  ///Permalink template for the object.
  String get permalinkTemplate;

  ///Slug automatically generated from the object title.
  String get generatedSlug;

  ///The title for the object.
  Map<String, dynamic> get title;

  ///The ID for the author of the object.
  int get author;

  ///Whether or not comments are open on the object.
  ///
  /// One of: "open", "closed"
  String get commentStatus;

  ///Whether or not the object can be pinged.
  ///
  /// One of: "open", "closed"
  String get pingStatus;

  ///Meta fields.
  dynamic get meta;

  ///The theme file to use to display the object.
  String get template;

  ///Alternative text to display when attachment is not displayed.
  String get altText;

  ///The attachment caption.
  Map<String, dynamic> get caption;

  ///The attachment description.
  Map<String, dynamic> get description;

  ///Attachment type.
  ///
  /// One of: "image", "file"
  String get mediaType;

  ///The attachment MIME type.
  String get mimeType;

  ///Details about the media file, specific to its type.
  MediaDetailsSchema get mediaDetails;

  ///The ID for the associated post of the attachment.
  int get post;

  ///URL to the original attachment file.
  String get sourceUrl;

  ///List of the missing image sizes of the attachment.
  List<dynamic> get missingImageSizes;

  Map<String, dynamic> toJson();
  $MediaSchemaCopyWith<MediaSchema> get copyWith;
}

/// @nodoc
abstract class $MediaSchemaCopyWith<$Res> {
  factory $MediaSchemaCopyWith(
          MediaSchema value, $Res Function(MediaSchema) then) =
      _$MediaSchemaCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String dateGmt,
      Map<String, dynamic> guid,
      int id,
      String link,
      String modified,
      String modifiedGmt,
      String slug,
      String status,
      String type,
      String permalinkTemplate,
      String generatedSlug,
      Map<String, dynamic> title,
      int author,
      String commentStatus,
      String pingStatus,
      dynamic meta,
      String template,
      String altText,
      Map<String, dynamic> caption,
      Map<String, dynamic> description,
      String mediaType,
      String mimeType,
      MediaDetailsSchema mediaDetails,
      int post,
      String sourceUrl,
      List<dynamic> missingImageSizes});

  $MediaDetailsSchemaCopyWith<$Res> get mediaDetails;
}

/// @nodoc
class _$MediaSchemaCopyWithImpl<$Res> implements $MediaSchemaCopyWith<$Res> {
  _$MediaSchemaCopyWithImpl(this._value, this._then);

  final MediaSchema _value;
  // ignore: unused_field
  final $Res Function(MediaSchema) _then;

  @override
  $Res call({
    Object date = freezed,
    Object dateGmt = freezed,
    Object guid = freezed,
    Object id = freezed,
    Object link = freezed,
    Object modified = freezed,
    Object modifiedGmt = freezed,
    Object slug = freezed,
    Object status = freezed,
    Object type = freezed,
    Object permalinkTemplate = freezed,
    Object generatedSlug = freezed,
    Object title = freezed,
    Object author = freezed,
    Object commentStatus = freezed,
    Object pingStatus = freezed,
    Object meta = freezed,
    Object template = freezed,
    Object altText = freezed,
    Object caption = freezed,
    Object description = freezed,
    Object mediaType = freezed,
    Object mimeType = freezed,
    Object mediaDetails = freezed,
    Object post = freezed,
    Object sourceUrl = freezed,
    Object missingImageSizes = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as String,
      dateGmt: dateGmt == freezed ? _value.dateGmt : dateGmt as String,
      guid: guid == freezed ? _value.guid : guid as Map<String, dynamic>,
      id: id == freezed ? _value.id : id as int,
      link: link == freezed ? _value.link : link as String,
      modified: modified == freezed ? _value.modified : modified as String,
      modifiedGmt:
          modifiedGmt == freezed ? _value.modifiedGmt : modifiedGmt as String,
      slug: slug == freezed ? _value.slug : slug as String,
      status: status == freezed ? _value.status : status as String,
      type: type == freezed ? _value.type : type as String,
      permalinkTemplate: permalinkTemplate == freezed
          ? _value.permalinkTemplate
          : permalinkTemplate as String,
      generatedSlug: generatedSlug == freezed
          ? _value.generatedSlug
          : generatedSlug as String,
      title: title == freezed ? _value.title : title as Map<String, dynamic>,
      author: author == freezed ? _value.author : author as int,
      commentStatus: commentStatus == freezed
          ? _value.commentStatus
          : commentStatus as String,
      pingStatus:
          pingStatus == freezed ? _value.pingStatus : pingStatus as String,
      meta: meta == freezed ? _value.meta : meta as dynamic,
      template: template == freezed ? _value.template : template as String,
      altText: altText == freezed ? _value.altText : altText as String,
      caption:
          caption == freezed ? _value.caption : caption as Map<String, dynamic>,
      description: description == freezed
          ? _value.description
          : description as Map<String, dynamic>,
      mediaType: mediaType == freezed ? _value.mediaType : mediaType as String,
      mimeType: mimeType == freezed ? _value.mimeType : mimeType as String,
      mediaDetails: mediaDetails == freezed
          ? _value.mediaDetails
          : mediaDetails as MediaDetailsSchema,
      post: post == freezed ? _value.post : post as int,
      sourceUrl: sourceUrl == freezed ? _value.sourceUrl : sourceUrl as String,
      missingImageSizes: missingImageSizes == freezed
          ? _value.missingImageSizes
          : missingImageSizes as List<dynamic>,
    ));
  }

  @override
  $MediaDetailsSchemaCopyWith<$Res> get mediaDetails {
    if (_value.mediaDetails == null) {
      return null;
    }
    return $MediaDetailsSchemaCopyWith<$Res>(_value.mediaDetails, (value) {
      return _then(_value.copyWith(mediaDetails: value));
    });
  }
}

/// @nodoc
abstract class _$MediaSchemaCopyWith<$Res>
    implements $MediaSchemaCopyWith<$Res> {
  factory _$MediaSchemaCopyWith(
          _MediaSchema value, $Res Function(_MediaSchema) then) =
      __$MediaSchemaCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      String dateGmt,
      Map<String, dynamic> guid,
      int id,
      String link,
      String modified,
      String modifiedGmt,
      String slug,
      String status,
      String type,
      String permalinkTemplate,
      String generatedSlug,
      Map<String, dynamic> title,
      int author,
      String commentStatus,
      String pingStatus,
      dynamic meta,
      String template,
      String altText,
      Map<String, dynamic> caption,
      Map<String, dynamic> description,
      String mediaType,
      String mimeType,
      MediaDetailsSchema mediaDetails,
      int post,
      String sourceUrl,
      List<dynamic> missingImageSizes});

  @override
  $MediaDetailsSchemaCopyWith<$Res> get mediaDetails;
}

/// @nodoc
class __$MediaSchemaCopyWithImpl<$Res> extends _$MediaSchemaCopyWithImpl<$Res>
    implements _$MediaSchemaCopyWith<$Res> {
  __$MediaSchemaCopyWithImpl(
      _MediaSchema _value, $Res Function(_MediaSchema) _then)
      : super(_value, (v) => _then(v as _MediaSchema));

  @override
  _MediaSchema get _value => super._value as _MediaSchema;

  @override
  $Res call({
    Object date = freezed,
    Object dateGmt = freezed,
    Object guid = freezed,
    Object id = freezed,
    Object link = freezed,
    Object modified = freezed,
    Object modifiedGmt = freezed,
    Object slug = freezed,
    Object status = freezed,
    Object type = freezed,
    Object permalinkTemplate = freezed,
    Object generatedSlug = freezed,
    Object title = freezed,
    Object author = freezed,
    Object commentStatus = freezed,
    Object pingStatus = freezed,
    Object meta = freezed,
    Object template = freezed,
    Object altText = freezed,
    Object caption = freezed,
    Object description = freezed,
    Object mediaType = freezed,
    Object mimeType = freezed,
    Object mediaDetails = freezed,
    Object post = freezed,
    Object sourceUrl = freezed,
    Object missingImageSizes = freezed,
  }) {
    return _then(_MediaSchema(
      date: date == freezed ? _value.date : date as String,
      dateGmt: dateGmt == freezed ? _value.dateGmt : dateGmt as String,
      guid: guid == freezed ? _value.guid : guid as Map<String, dynamic>,
      id: id == freezed ? _value.id : id as int,
      link: link == freezed ? _value.link : link as String,
      modified: modified == freezed ? _value.modified : modified as String,
      modifiedGmt:
          modifiedGmt == freezed ? _value.modifiedGmt : modifiedGmt as String,
      slug: slug == freezed ? _value.slug : slug as String,
      status: status == freezed ? _value.status : status as String,
      type: type == freezed ? _value.type : type as String,
      permalinkTemplate: permalinkTemplate == freezed
          ? _value.permalinkTemplate
          : permalinkTemplate as String,
      generatedSlug: generatedSlug == freezed
          ? _value.generatedSlug
          : generatedSlug as String,
      title: title == freezed ? _value.title : title as Map<String, dynamic>,
      author: author == freezed ? _value.author : author as int,
      commentStatus: commentStatus == freezed
          ? _value.commentStatus
          : commentStatus as String,
      pingStatus:
          pingStatus == freezed ? _value.pingStatus : pingStatus as String,
      meta: meta == freezed ? _value.meta : meta as dynamic,
      template: template == freezed ? _value.template : template as String,
      altText: altText == freezed ? _value.altText : altText as String,
      caption:
          caption == freezed ? _value.caption : caption as Map<String, dynamic>,
      description: description == freezed
          ? _value.description
          : description as Map<String, dynamic>,
      mediaType: mediaType == freezed ? _value.mediaType : mediaType as String,
      mimeType: mimeType == freezed ? _value.mimeType : mimeType as String,
      mediaDetails: mediaDetails == freezed
          ? _value.mediaDetails
          : mediaDetails as MediaDetailsSchema,
      post: post == freezed ? _value.post : post as int,
      sourceUrl: sourceUrl == freezed ? _value.sourceUrl : sourceUrl as String,
      missingImageSizes: missingImageSizes == freezed
          ? _value.missingImageSizes
          : missingImageSizes as List<dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MediaSchema implements _MediaSchema {
  _$_MediaSchema(
      {this.date,
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
      this.missingImageSizes});

  factory _$_MediaSchema.fromJson(Map<String, dynamic> json) =>
      _$_$_MediaSchemaFromJson(json);

  @override

  ///The date the object was published, in the site's timezone.
  final String date;
  @override

  ///The date the object was published, as GMT.
  final String dateGmt;
  @override

  ///The globally unique identifier for the object.
  final Map<String, dynamic> guid;
  @override

  ///Unique identifier for the object.
  final int id;
  @override

  ///URL to the object.
  final String link;
  @override

  ///The date the object was last modified, in the site's timezone.
  final String modified;
  @override

  ///The date the object was last modified, as GMT.
  final String modifiedGmt;
  @override

  ///An alphanumeric identifier for the object unique to its type.
  final String slug;
  @override

  ///A named status for the object.
  ///
  /// One of: "publish", "future", "draft", "pending", "private"
  final String status;
  @override

  ///Type of Post for the object.
  final String type;
  @override

  ///Permalink template for the object.
  final String permalinkTemplate;
  @override

  ///Slug automatically generated from the object title.
  final String generatedSlug;
  @override

  ///The title for the object.
  final Map<String, dynamic> title;
  @override

  ///The ID for the author of the object.
  final int author;
  @override

  ///Whether or not comments are open on the object.
  ///
  /// One of: "open", "closed"
  final String commentStatus;
  @override

  ///Whether or not the object can be pinged.
  ///
  /// One of: "open", "closed"
  final String pingStatus;
  @override

  ///Meta fields.
  final dynamic meta;
  @override

  ///The theme file to use to display the object.
  final String template;
  @override

  ///Alternative text to display when attachment is not displayed.
  final String altText;
  @override

  ///The attachment caption.
  final Map<String, dynamic> caption;
  @override

  ///The attachment description.
  final Map<String, dynamic> description;
  @override

  ///Attachment type.
  ///
  /// One of: "image", "file"
  final String mediaType;
  @override

  ///The attachment MIME type.
  final String mimeType;
  @override

  ///Details about the media file, specific to its type.
  final MediaDetailsSchema mediaDetails;
  @override

  ///The ID for the associated post of the attachment.
  final int post;
  @override

  ///URL to the original attachment file.
  final String sourceUrl;
  @override

  ///List of the missing image sizes of the attachment.
  final List<dynamic> missingImageSizes;

  @override
  String toString() {
    return 'MediaSchema(date: $date, dateGmt: $dateGmt, guid: $guid, id: $id, link: $link, modified: $modified, modifiedGmt: $modifiedGmt, slug: $slug, status: $status, type: $type, permalinkTemplate: $permalinkTemplate, generatedSlug: $generatedSlug, title: $title, author: $author, commentStatus: $commentStatus, pingStatus: $pingStatus, meta: $meta, template: $template, altText: $altText, caption: $caption, description: $description, mediaType: $mediaType, mimeType: $mimeType, mediaDetails: $mediaDetails, post: $post, sourceUrl: $sourceUrl, missingImageSizes: $missingImageSizes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MediaSchema &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.dateGmt, dateGmt) ||
                const DeepCollectionEquality()
                    .equals(other.dateGmt, dateGmt)) &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.modified, modified) ||
                const DeepCollectionEquality()
                    .equals(other.modified, modified)) &&
            (identical(other.modifiedGmt, modifiedGmt) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedGmt, modifiedGmt)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.permalinkTemplate, permalinkTemplate) ||
                const DeepCollectionEquality()
                    .equals(other.permalinkTemplate, permalinkTemplate)) &&
            (identical(other.generatedSlug, generatedSlug) ||
                const DeepCollectionEquality()
                    .equals(other.generatedSlug, generatedSlug)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.commentStatus, commentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.commentStatus, commentStatus)) &&
            (identical(other.pingStatus, pingStatus) ||
                const DeepCollectionEquality()
                    .equals(other.pingStatus, pingStatus)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)) &&
            (identical(other.template, template) ||
                const DeepCollectionEquality()
                    .equals(other.template, template)) &&
            (identical(other.altText, altText) ||
                const DeepCollectionEquality()
                    .equals(other.altText, altText)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.mimeType, mimeType) ||
                const DeepCollectionEquality()
                    .equals(other.mimeType, mimeType)) &&
            (identical(other.mediaDetails, mediaDetails) ||
                const DeepCollectionEquality()
                    .equals(other.mediaDetails, mediaDetails)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.sourceUrl, sourceUrl) ||
                const DeepCollectionEquality()
                    .equals(other.sourceUrl, sourceUrl)) &&
            (identical(other.missingImageSizes, missingImageSizes) ||
                const DeepCollectionEquality()
                    .equals(other.missingImageSizes, missingImageSizes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(dateGmt) ^
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(modified) ^
      const DeepCollectionEquality().hash(modifiedGmt) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(permalinkTemplate) ^
      const DeepCollectionEquality().hash(generatedSlug) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(commentStatus) ^
      const DeepCollectionEquality().hash(pingStatus) ^
      const DeepCollectionEquality().hash(meta) ^
      const DeepCollectionEquality().hash(template) ^
      const DeepCollectionEquality().hash(altText) ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(mimeType) ^
      const DeepCollectionEquality().hash(mediaDetails) ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(sourceUrl) ^
      const DeepCollectionEquality().hash(missingImageSizes);

  @override
  _$MediaSchemaCopyWith<_MediaSchema> get copyWith =>
      __$MediaSchemaCopyWithImpl<_MediaSchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MediaSchemaToJson(this);
  }
}

abstract class _MediaSchema implements MediaSchema {
  factory _MediaSchema(
      {String date,
      String dateGmt,
      Map<String, dynamic> guid,
      int id,
      String link,
      String modified,
      String modifiedGmt,
      String slug,
      String status,
      String type,
      String permalinkTemplate,
      String generatedSlug,
      Map<String, dynamic> title,
      int author,
      String commentStatus,
      String pingStatus,
      dynamic meta,
      String template,
      String altText,
      Map<String, dynamic> caption,
      Map<String, dynamic> description,
      String mediaType,
      String mimeType,
      MediaDetailsSchema mediaDetails,
      int post,
      String sourceUrl,
      List<dynamic> missingImageSizes}) = _$_MediaSchema;

  factory _MediaSchema.fromJson(Map<String, dynamic> json) =
      _$_MediaSchema.fromJson;

  @override

  ///The date the object was published, in the site's timezone.
  String get date;
  @override

  ///The date the object was published, as GMT.
  String get dateGmt;
  @override

  ///The globally unique identifier for the object.
  Map<String, dynamic> get guid;
  @override

  ///Unique identifier for the object.
  int get id;
  @override

  ///URL to the object.
  String get link;
  @override

  ///The date the object was last modified, in the site's timezone.
  String get modified;
  @override

  ///The date the object was last modified, as GMT.
  String get modifiedGmt;
  @override

  ///An alphanumeric identifier for the object unique to its type.
  String get slug;
  @override

  ///A named status for the object.
  ///
  /// One of: "publish", "future", "draft", "pending", "private"
  String get status;
  @override

  ///Type of Post for the object.
  String get type;
  @override

  ///Permalink template for the object.
  String get permalinkTemplate;
  @override

  ///Slug automatically generated from the object title.
  String get generatedSlug;
  @override

  ///The title for the object.
  Map<String, dynamic> get title;
  @override

  ///The ID for the author of the object.
  int get author;
  @override

  ///Whether or not comments are open on the object.
  ///
  /// One of: "open", "closed"
  String get commentStatus;
  @override

  ///Whether or not the object can be pinged.
  ///
  /// One of: "open", "closed"
  String get pingStatus;
  @override

  ///Meta fields.
  dynamic get meta;
  @override

  ///The theme file to use to display the object.
  String get template;
  @override

  ///Alternative text to display when attachment is not displayed.
  String get altText;
  @override

  ///The attachment caption.
  Map<String, dynamic> get caption;
  @override

  ///The attachment description.
  Map<String, dynamic> get description;
  @override

  ///Attachment type.
  ///
  /// One of: "image", "file"
  String get mediaType;
  @override

  ///The attachment MIME type.
  String get mimeType;
  @override

  ///Details about the media file, specific to its type.
  MediaDetailsSchema get mediaDetails;
  @override

  ///The ID for the associated post of the attachment.
  int get post;
  @override

  ///URL to the original attachment file.
  String get sourceUrl;
  @override

  ///List of the missing image sizes of the attachment.
  List<dynamic> get missingImageSizes;
  @override
  _$MediaSchemaCopyWith<_MediaSchema> get copyWith;
}
