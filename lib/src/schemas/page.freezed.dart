// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PageSchema _$PageSchemaFromJson(Map<String, dynamic> json) {
  return _PageSchema.fromJson(json);
}

/// @nodoc
class _$PageSchemaTearOff {
  const _$PageSchemaTearOff();

// ignore: unused_element
  _PageSchema call(
      {List<dynamic> date,
      List<dynamic> dateGmt,
      Map<String, dynamic> guid,
      int id,
      String link,
      String modified,
      String modifitedGmt,
      String slug,
      String status,
      String type,
      String password,
      String permalinkTemplate,
      String generatedSlug,
      int parent,
      Map<String, dynamic> title,
      Map<String, dynamic> content,
      int author,
      Map<String, dynamic> excerpt,
      int featuredMedia,
      String commentStatus,
      String pingStatus,
      int menuOrder,
      List<dynamic> meta,
      String template}) {
    return _PageSchema(
      date: date,
      dateGmt: dateGmt,
      guid: guid,
      id: id,
      link: link,
      modified: modified,
      modifitedGmt: modifitedGmt,
      slug: slug,
      status: status,
      type: type,
      password: password,
      permalinkTemplate: permalinkTemplate,
      generatedSlug: generatedSlug,
      parent: parent,
      title: title,
      content: content,
      author: author,
      excerpt: excerpt,
      featuredMedia: featuredMedia,
      commentStatus: commentStatus,
      pingStatus: pingStatus,
      menuOrder: menuOrder,
      meta: meta,
      template: template,
    );
  }

// ignore: unused_element
  PageSchema fromJson(Map<String, Object> json) {
    return PageSchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PageSchema = _$PageSchemaTearOff();

/// @nodoc
mixin _$PageSchema {
  ///The date the object was published, in the site's timezone.
  List<dynamic> get date;

  ///The date the object was published, as GMT.
  List<dynamic> get dateGmt;

  ///The globally unique identifier for the object.
  Map<String, dynamic> get guid;

  ///Unique identifier for the object.
  int get id;

  ///URL to the object.
  String get link;

  ///The date the object was last modified, in the site's timezone.
  String get modified;

  ///The date the object was last modified, as GMT.
  String get modifitedGmt;

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

  ///The ID for the parent of the object.
  int get parent;

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

  ///The order of the object in relation to other object of its type.
  int get menuOrder;

  ///Meta fields.
  List<dynamic> get meta;

  ///The theme file to use to display the object.
  String get template;

  Map<String, dynamic> toJson();
  $PageSchemaCopyWith<PageSchema> get copyWith;
}

/// @nodoc
abstract class $PageSchemaCopyWith<$Res> {
  factory $PageSchemaCopyWith(
          PageSchema value, $Res Function(PageSchema) then) =
      _$PageSchemaCopyWithImpl<$Res>;
  $Res call(
      {List<dynamic> date,
      List<dynamic> dateGmt,
      Map<String, dynamic> guid,
      int id,
      String link,
      String modified,
      String modifitedGmt,
      String slug,
      String status,
      String type,
      String password,
      String permalinkTemplate,
      String generatedSlug,
      int parent,
      Map<String, dynamic> title,
      Map<String, dynamic> content,
      int author,
      Map<String, dynamic> excerpt,
      int featuredMedia,
      String commentStatus,
      String pingStatus,
      int menuOrder,
      List<dynamic> meta,
      String template});
}

/// @nodoc
class _$PageSchemaCopyWithImpl<$Res> implements $PageSchemaCopyWith<$Res> {
  _$PageSchemaCopyWithImpl(this._value, this._then);

  final PageSchema _value;
  // ignore: unused_field
  final $Res Function(PageSchema) _then;

  @override
  $Res call({
    Object date = freezed,
    Object dateGmt = freezed,
    Object guid = freezed,
    Object id = freezed,
    Object link = freezed,
    Object modified = freezed,
    Object modifitedGmt = freezed,
    Object slug = freezed,
    Object status = freezed,
    Object type = freezed,
    Object password = freezed,
    Object permalinkTemplate = freezed,
    Object generatedSlug = freezed,
    Object parent = freezed,
    Object title = freezed,
    Object content = freezed,
    Object author = freezed,
    Object excerpt = freezed,
    Object featuredMedia = freezed,
    Object commentStatus = freezed,
    Object pingStatus = freezed,
    Object menuOrder = freezed,
    Object meta = freezed,
    Object template = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as List<dynamic>,
      dateGmt: dateGmt == freezed ? _value.dateGmt : dateGmt as List<dynamic>,
      guid: guid == freezed ? _value.guid : guid as Map<String, dynamic>,
      id: id == freezed ? _value.id : id as int,
      link: link == freezed ? _value.link : link as String,
      modified: modified == freezed ? _value.modified : modified as String,
      modifitedGmt: modifitedGmt == freezed
          ? _value.modifitedGmt
          : modifitedGmt as String,
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
      parent: parent == freezed ? _value.parent : parent as int,
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
      menuOrder: menuOrder == freezed ? _value.menuOrder : menuOrder as int,
      meta: meta == freezed ? _value.meta : meta as List<dynamic>,
      template: template == freezed ? _value.template : template as String,
    ));
  }
}

/// @nodoc
abstract class _$PageSchemaCopyWith<$Res> implements $PageSchemaCopyWith<$Res> {
  factory _$PageSchemaCopyWith(
          _PageSchema value, $Res Function(_PageSchema) then) =
      __$PageSchemaCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<dynamic> date,
      List<dynamic> dateGmt,
      Map<String, dynamic> guid,
      int id,
      String link,
      String modified,
      String modifitedGmt,
      String slug,
      String status,
      String type,
      String password,
      String permalinkTemplate,
      String generatedSlug,
      int parent,
      Map<String, dynamic> title,
      Map<String, dynamic> content,
      int author,
      Map<String, dynamic> excerpt,
      int featuredMedia,
      String commentStatus,
      String pingStatus,
      int menuOrder,
      List<dynamic> meta,
      String template});
}

/// @nodoc
class __$PageSchemaCopyWithImpl<$Res> extends _$PageSchemaCopyWithImpl<$Res>
    implements _$PageSchemaCopyWith<$Res> {
  __$PageSchemaCopyWithImpl(
      _PageSchema _value, $Res Function(_PageSchema) _then)
      : super(_value, (v) => _then(v as _PageSchema));

  @override
  _PageSchema get _value => super._value as _PageSchema;

  @override
  $Res call({
    Object date = freezed,
    Object dateGmt = freezed,
    Object guid = freezed,
    Object id = freezed,
    Object link = freezed,
    Object modified = freezed,
    Object modifitedGmt = freezed,
    Object slug = freezed,
    Object status = freezed,
    Object type = freezed,
    Object password = freezed,
    Object permalinkTemplate = freezed,
    Object generatedSlug = freezed,
    Object parent = freezed,
    Object title = freezed,
    Object content = freezed,
    Object author = freezed,
    Object excerpt = freezed,
    Object featuredMedia = freezed,
    Object commentStatus = freezed,
    Object pingStatus = freezed,
    Object menuOrder = freezed,
    Object meta = freezed,
    Object template = freezed,
  }) {
    return _then(_PageSchema(
      date: date == freezed ? _value.date : date as List<dynamic>,
      dateGmt: dateGmt == freezed ? _value.dateGmt : dateGmt as List<dynamic>,
      guid: guid == freezed ? _value.guid : guid as Map<String, dynamic>,
      id: id == freezed ? _value.id : id as int,
      link: link == freezed ? _value.link : link as String,
      modified: modified == freezed ? _value.modified : modified as String,
      modifitedGmt: modifitedGmt == freezed
          ? _value.modifitedGmt
          : modifitedGmt as String,
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
      parent: parent == freezed ? _value.parent : parent as int,
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
      menuOrder: menuOrder == freezed ? _value.menuOrder : menuOrder as int,
      meta: meta == freezed ? _value.meta : meta as List<dynamic>,
      template: template == freezed ? _value.template : template as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PageSchema implements _PageSchema {
  _$_PageSchema(
      {this.date,
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
      this.template});

  factory _$_PageSchema.fromJson(Map<String, dynamic> json) =>
      _$_$_PageSchemaFromJson(json);

  @override

  ///The date the object was published, in the site's timezone.
  final List<dynamic> date;
  @override

  ///The date the object was published, as GMT.
  final List<dynamic> dateGmt;
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
  final String modifitedGmt;
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

  ///The ID for the parent of the object.
  final int parent;
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

  ///The order of the object in relation to other object of its type.
  final int menuOrder;
  @override

  ///Meta fields.
  final List<dynamic> meta;
  @override

  ///The theme file to use to display the object.
  final String template;

  @override
  String toString() {
    return 'PageSchema(date: $date, dateGmt: $dateGmt, guid: $guid, id: $id, link: $link, modified: $modified, modifitedGmt: $modifitedGmt, slug: $slug, status: $status, type: $type, password: $password, permalinkTemplate: $permalinkTemplate, generatedSlug: $generatedSlug, parent: $parent, title: $title, content: $content, author: $author, excerpt: $excerpt, featuredMedia: $featuredMedia, commentStatus: $commentStatus, pingStatus: $pingStatus, menuOrder: $menuOrder, meta: $meta, template: $template)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageSchema &&
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
            (identical(other.modifitedGmt, modifitedGmt) ||
                const DeepCollectionEquality()
                    .equals(other.modifitedGmt, modifitedGmt)) &&
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
            (identical(other.parent, parent) ||
                const DeepCollectionEquality().equals(other.parent, parent)) &&
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
            (identical(other.menuOrder, menuOrder) ||
                const DeepCollectionEquality()
                    .equals(other.menuOrder, menuOrder)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)) &&
            (identical(other.template, template) ||
                const DeepCollectionEquality()
                    .equals(other.template, template)));
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
      const DeepCollectionEquality().hash(modifitedGmt) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(permalinkTemplate) ^
      const DeepCollectionEquality().hash(generatedSlug) ^
      const DeepCollectionEquality().hash(parent) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(excerpt) ^
      const DeepCollectionEquality().hash(featuredMedia) ^
      const DeepCollectionEquality().hash(commentStatus) ^
      const DeepCollectionEquality().hash(pingStatus) ^
      const DeepCollectionEquality().hash(menuOrder) ^
      const DeepCollectionEquality().hash(meta) ^
      const DeepCollectionEquality().hash(template);

  @override
  _$PageSchemaCopyWith<_PageSchema> get copyWith =>
      __$PageSchemaCopyWithImpl<_PageSchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PageSchemaToJson(this);
  }
}

abstract class _PageSchema implements PageSchema {
  factory _PageSchema(
      {List<dynamic> date,
      List<dynamic> dateGmt,
      Map<String, dynamic> guid,
      int id,
      String link,
      String modified,
      String modifitedGmt,
      String slug,
      String status,
      String type,
      String password,
      String permalinkTemplate,
      String generatedSlug,
      int parent,
      Map<String, dynamic> title,
      Map<String, dynamic> content,
      int author,
      Map<String, dynamic> excerpt,
      int featuredMedia,
      String commentStatus,
      String pingStatus,
      int menuOrder,
      List<dynamic> meta,
      String template}) = _$_PageSchema;

  factory _PageSchema.fromJson(Map<String, dynamic> json) =
      _$_PageSchema.fromJson;

  @override

  ///The date the object was published, in the site's timezone.
  List<dynamic> get date;
  @override

  ///The date the object was published, as GMT.
  List<dynamic> get dateGmt;
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
  String get modifitedGmt;
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

  ///The ID for the parent of the object.
  int get parent;
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

  ///The order of the object in relation to other object of its type.
  int get menuOrder;
  @override

  ///Meta fields.
  List<dynamic> get meta;
  @override

  ///The theme file to use to display the object.
  String get template;
  @override
  _$PageSchemaCopyWith<_PageSchema> get copyWith;
}
