// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostSchema _$PostSchemaFromJson(Map<String, dynamic> json) {
  return _PostSchema.fromJson(json);
}

/// @nodoc
class _$PostSchemaTearOff {
  const _$PostSchemaTearOff();

// ignore: unused_element
  _PostSchema call(
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
      String password,
      String permalinkTemplate,
      String generatedSlug,
      Map<String, dynamic> title,
      Map<String, dynamic> content,
      int author,
      Map<String, dynamic> excerpt,
      int featuredMedia,
      String commentStatus,
      String pingStatus,
      String format,
      @JsonKey(nullable: true) Map<String, dynamic> meta,
      bool sticky,
      String template,
      List<dynamic> categories,
      List<dynamic> tags,
      @JsonKey(name: '_embedded') EmbeddedSchema embedded}) {
    return _PostSchema(
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
      password: password,
      permalinkTemplate: permalinkTemplate,
      generatedSlug: generatedSlug,
      title: title,
      content: content,
      author: author,
      excerpt: excerpt,
      featuredMedia: featuredMedia,
      commentStatus: commentStatus,
      pingStatus: pingStatus,
      format: format,
      meta: meta,
      sticky: sticky,
      template: template,
      categories: categories,
      tags: tags,
      embedded: embedded,
    );
  }

// ignore: unused_element
  PostSchema fromJson(Map<String, Object> json) {
    return PostSchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PostSchema = _$PostSchemaTearOff();

/// @nodoc
mixin _$PostSchema {
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

  ///The date the object was last modified, in the site's timezone
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

  ///A password to protect access to the content and excerpt.
  String get password;

  ///Permalink template for the object.
  String get permalinkTemplate;

  ///Slug automatically generated from the object title.
  String get generatedSlug;

  ///The title for the object.
  Map<String, dynamic> get title;

  ///The content for the object.
  Map<String, dynamic> get content;

  ///The ID for the author of the object.
  int get author;

  ///The excerpt for the object.
  Map<String, dynamic> get excerpt;

  ///The ID of the featured media for the object.
  int get featuredMedia;

  ///Whether or not comments are open on the object.
  ///
  /// One of: "open", "closed"
  String get commentStatus;

  ///Whether or not the object can be pinged.
  ///
  /// One of: "open", "closed"
  String get pingStatus;

  ///The format for the object.
  ///
  /// One of: "standard", "aside", "chat", "gallery", "link", "image", "quote", "status", "video", "audio"
  String get format;

  ///Meta fields.
  @JsonKey(nullable: true)
  Map<String, dynamic> get meta;

  ///Whether or not the object should be treated as sticky.
  bool get sticky;

  ///The theme file to use to display the object.
  String get template;

  ///The terms assigned to the object in the category taxonomy.
  List<dynamic> get categories;

  ///The terms assigned to the object in the post_tag taxonomy.
  List<dynamic> get tags;

  /// Embedded
  @JsonKey(name: '_embedded')
  EmbeddedSchema get embedded;

  Map<String, dynamic> toJson();
  $PostSchemaCopyWith<PostSchema> get copyWith;
}

/// @nodoc
abstract class $PostSchemaCopyWith<$Res> {
  factory $PostSchemaCopyWith(
          PostSchema value, $Res Function(PostSchema) then) =
      _$PostSchemaCopyWithImpl<$Res>;
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
      String password,
      String permalinkTemplate,
      String generatedSlug,
      Map<String, dynamic> title,
      Map<String, dynamic> content,
      int author,
      Map<String, dynamic> excerpt,
      int featuredMedia,
      String commentStatus,
      String pingStatus,
      String format,
      @JsonKey(nullable: true) Map<String, dynamic> meta,
      bool sticky,
      String template,
      List<dynamic> categories,
      List<dynamic> tags,
      @JsonKey(name: '_embedded') EmbeddedSchema embedded});

  $EmbeddedSchemaCopyWith<$Res> get embedded;
}

/// @nodoc
class _$PostSchemaCopyWithImpl<$Res> implements $PostSchemaCopyWith<$Res> {
  _$PostSchemaCopyWithImpl(this._value, this._then);

  final PostSchema _value;
  // ignore: unused_field
  final $Res Function(PostSchema) _then;

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
    Object password = freezed,
    Object permalinkTemplate = freezed,
    Object generatedSlug = freezed,
    Object title = freezed,
    Object content = freezed,
    Object author = freezed,
    Object excerpt = freezed,
    Object featuredMedia = freezed,
    Object commentStatus = freezed,
    Object pingStatus = freezed,
    Object format = freezed,
    Object meta = freezed,
    Object sticky = freezed,
    Object template = freezed,
    Object categories = freezed,
    Object tags = freezed,
    Object embedded = freezed,
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
      password: password == freezed ? _value.password : password as String,
      permalinkTemplate: permalinkTemplate == freezed
          ? _value.permalinkTemplate
          : permalinkTemplate as String,
      generatedSlug: generatedSlug == freezed
          ? _value.generatedSlug
          : generatedSlug as String,
      title: title == freezed ? _value.title : title as Map<String, dynamic>,
      content:
          content == freezed ? _value.content : content as Map<String, dynamic>,
      author: author == freezed ? _value.author : author as int,
      excerpt:
          excerpt == freezed ? _value.excerpt : excerpt as Map<String, dynamic>,
      featuredMedia: featuredMedia == freezed
          ? _value.featuredMedia
          : featuredMedia as int,
      commentStatus: commentStatus == freezed
          ? _value.commentStatus
          : commentStatus as String,
      pingStatus:
          pingStatus == freezed ? _value.pingStatus : pingStatus as String,
      format: format == freezed ? _value.format : format as String,
      meta: meta == freezed ? _value.meta : meta as Map<String, dynamic>,
      sticky: sticky == freezed ? _value.sticky : sticky as bool,
      template: template == freezed ? _value.template : template as String,
      categories: categories == freezed
          ? _value.categories
          : categories as List<dynamic>,
      tags: tags == freezed ? _value.tags : tags as List<dynamic>,
      embedded:
          embedded == freezed ? _value.embedded : embedded as EmbeddedSchema,
    ));
  }

  @override
  $EmbeddedSchemaCopyWith<$Res> get embedded {
    if (_value.embedded == null) {
      return null;
    }
    return $EmbeddedSchemaCopyWith<$Res>(_value.embedded, (value) {
      return _then(_value.copyWith(embedded: value));
    });
  }
}

/// @nodoc
abstract class _$PostSchemaCopyWith<$Res> implements $PostSchemaCopyWith<$Res> {
  factory _$PostSchemaCopyWith(
          _PostSchema value, $Res Function(_PostSchema) then) =
      __$PostSchemaCopyWithImpl<$Res>;
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
      String password,
      String permalinkTemplate,
      String generatedSlug,
      Map<String, dynamic> title,
      Map<String, dynamic> content,
      int author,
      Map<String, dynamic> excerpt,
      int featuredMedia,
      String commentStatus,
      String pingStatus,
      String format,
      @JsonKey(nullable: true) Map<String, dynamic> meta,
      bool sticky,
      String template,
      List<dynamic> categories,
      List<dynamic> tags,
      @JsonKey(name: '_embedded') EmbeddedSchema embedded});

  @override
  $EmbeddedSchemaCopyWith<$Res> get embedded;
}

/// @nodoc
class __$PostSchemaCopyWithImpl<$Res> extends _$PostSchemaCopyWithImpl<$Res>
    implements _$PostSchemaCopyWith<$Res> {
  __$PostSchemaCopyWithImpl(
      _PostSchema _value, $Res Function(_PostSchema) _then)
      : super(_value, (v) => _then(v as _PostSchema));

  @override
  _PostSchema get _value => super._value as _PostSchema;

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
    Object password = freezed,
    Object permalinkTemplate = freezed,
    Object generatedSlug = freezed,
    Object title = freezed,
    Object content = freezed,
    Object author = freezed,
    Object excerpt = freezed,
    Object featuredMedia = freezed,
    Object commentStatus = freezed,
    Object pingStatus = freezed,
    Object format = freezed,
    Object meta = freezed,
    Object sticky = freezed,
    Object template = freezed,
    Object categories = freezed,
    Object tags = freezed,
    Object embedded = freezed,
  }) {
    return _then(_PostSchema(
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
      password: password == freezed ? _value.password : password as String,
      permalinkTemplate: permalinkTemplate == freezed
          ? _value.permalinkTemplate
          : permalinkTemplate as String,
      generatedSlug: generatedSlug == freezed
          ? _value.generatedSlug
          : generatedSlug as String,
      title: title == freezed ? _value.title : title as Map<String, dynamic>,
      content:
          content == freezed ? _value.content : content as Map<String, dynamic>,
      author: author == freezed ? _value.author : author as int,
      excerpt:
          excerpt == freezed ? _value.excerpt : excerpt as Map<String, dynamic>,
      featuredMedia: featuredMedia == freezed
          ? _value.featuredMedia
          : featuredMedia as int,
      commentStatus: commentStatus == freezed
          ? _value.commentStatus
          : commentStatus as String,
      pingStatus:
          pingStatus == freezed ? _value.pingStatus : pingStatus as String,
      format: format == freezed ? _value.format : format as String,
      meta: meta == freezed ? _value.meta : meta as Map<String, dynamic>,
      sticky: sticky == freezed ? _value.sticky : sticky as bool,
      template: template == freezed ? _value.template : template as String,
      categories: categories == freezed
          ? _value.categories
          : categories as List<dynamic>,
      tags: tags == freezed ? _value.tags : tags as List<dynamic>,
      embedded:
          embedded == freezed ? _value.embedded : embedded as EmbeddedSchema,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PostSchema implements _PostSchema {
  _$_PostSchema(
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
      @JsonKey(nullable: true) this.meta,
      this.sticky,
      this.template,
      this.categories,
      this.tags,
      @JsonKey(name: '_embedded') this.embedded});

  factory _$_PostSchema.fromJson(Map<String, dynamic> json) =>
      _$_$_PostSchemaFromJson(json);

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

  ///The date the object was last modified, in the site's timezone
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

  ///A password to protect access to the content and excerpt.
  final String password;
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

  ///The content for the object.
  final Map<String, dynamic> content;
  @override

  ///The ID for the author of the object.
  final int author;
  @override

  ///The excerpt for the object.
  final Map<String, dynamic> excerpt;
  @override

  ///The ID of the featured media for the object.
  final int featuredMedia;
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

  ///The format for the object.
  ///
  /// One of: "standard", "aside", "chat", "gallery", "link", "image", "quote", "status", "video", "audio"
  final String format;
  @override

  ///Meta fields.
  @JsonKey(nullable: true)
  final Map<String, dynamic> meta;
  @override

  ///Whether or not the object should be treated as sticky.
  final bool sticky;
  @override

  ///The theme file to use to display the object.
  final String template;
  @override

  ///The terms assigned to the object in the category taxonomy.
  final List<dynamic> categories;
  @override

  ///The terms assigned to the object in the post_tag taxonomy.
  final List<dynamic> tags;
  @override

  /// Embedded
  @JsonKey(name: '_embedded')
  final EmbeddedSchema embedded;

  @override
  String toString() {
    return 'PostSchema(date: $date, dateGmt: $dateGmt, guid: $guid, id: $id, link: $link, modified: $modified, modifiedGmt: $modifiedGmt, slug: $slug, status: $status, type: $type, password: $password, permalinkTemplate: $permalinkTemplate, generatedSlug: $generatedSlug, title: $title, content: $content, author: $author, excerpt: $excerpt, featuredMedia: $featuredMedia, commentStatus: $commentStatus, pingStatus: $pingStatus, format: $format, meta: $meta, sticky: $sticky, template: $template, categories: $categories, tags: $tags, embedded: $embedded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostSchema &&
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
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.permalinkTemplate, permalinkTemplate) ||
                const DeepCollectionEquality()
                    .equals(other.permalinkTemplate, permalinkTemplate)) &&
            (identical(other.generatedSlug, generatedSlug) ||
                const DeepCollectionEquality()
                    .equals(other.generatedSlug, generatedSlug)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.excerpt, excerpt) ||
                const DeepCollectionEquality()
                    .equals(other.excerpt, excerpt)) &&
            (identical(other.featuredMedia, featuredMedia) ||
                const DeepCollectionEquality()
                    .equals(other.featuredMedia, featuredMedia)) &&
            (identical(other.commentStatus, commentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.commentStatus, commentStatus)) &&
            (identical(other.pingStatus, pingStatus) ||
                const DeepCollectionEquality()
                    .equals(other.pingStatus, pingStatus)) &&
            (identical(other.format, format) ||
                const DeepCollectionEquality().equals(other.format, format)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)) &&
            (identical(other.sticky, sticky) ||
                const DeepCollectionEquality().equals(other.sticky, sticky)) &&
            (identical(other.template, template) ||
                const DeepCollectionEquality()
                    .equals(other.template, template)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.embedded, embedded) ||
                const DeepCollectionEquality()
                    .equals(other.embedded, embedded)));
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
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(permalinkTemplate) ^
      const DeepCollectionEquality().hash(generatedSlug) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(excerpt) ^
      const DeepCollectionEquality().hash(featuredMedia) ^
      const DeepCollectionEquality().hash(commentStatus) ^
      const DeepCollectionEquality().hash(pingStatus) ^
      const DeepCollectionEquality().hash(format) ^
      const DeepCollectionEquality().hash(meta) ^
      const DeepCollectionEquality().hash(sticky) ^
      const DeepCollectionEquality().hash(template) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(embedded);

  @override
  _$PostSchemaCopyWith<_PostSchema> get copyWith =>
      __$PostSchemaCopyWithImpl<_PostSchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostSchemaToJson(this);
  }
}

abstract class _PostSchema implements PostSchema {
  factory _PostSchema(
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
      String password,
      String permalinkTemplate,
      String generatedSlug,
      Map<String, dynamic> title,
      Map<String, dynamic> content,
      int author,
      Map<String, dynamic> excerpt,
      int featuredMedia,
      String commentStatus,
      String pingStatus,
      String format,
      @JsonKey(nullable: true) Map<String, dynamic> meta,
      bool sticky,
      String template,
      List<dynamic> categories,
      List<dynamic> tags,
      @JsonKey(name: '_embedded') EmbeddedSchema embedded}) = _$_PostSchema;

  factory _PostSchema.fromJson(Map<String, dynamic> json) =
      _$_PostSchema.fromJson;

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

  ///The date the object was last modified, in the site's timezone
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

  ///A password to protect access to the content and excerpt.
  String get password;
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

  ///The content for the object.
  Map<String, dynamic> get content;
  @override

  ///The ID for the author of the object.
  int get author;
  @override

  ///The excerpt for the object.
  Map<String, dynamic> get excerpt;
  @override

  ///The ID of the featured media for the object.
  int get featuredMedia;
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

  ///The format for the object.
  ///
  /// One of: "standard", "aside", "chat", "gallery", "link", "image", "quote", "status", "video", "audio"
  String get format;
  @override

  ///Meta fields.
  @JsonKey(nullable: true)
  Map<String, dynamic> get meta;
  @override

  ///Whether or not the object should be treated as sticky.
  bool get sticky;
  @override

  ///The theme file to use to display the object.
  String get template;
  @override

  ///The terms assigned to the object in the category taxonomy.
  List<dynamic> get categories;
  @override

  ///The terms assigned to the object in the post_tag taxonomy.
  List<dynamic> get tags;
  @override

  /// Embedded
  @JsonKey(name: '_embedded')
  EmbeddedSchema get embedded;
  @override
  _$PostSchemaCopyWith<_PostSchema> get copyWith;
}
