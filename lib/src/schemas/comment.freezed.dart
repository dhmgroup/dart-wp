// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CommentSchema _$CommentSchemaFromJson(Map<String, dynamic> json) {
  return _CommentSchema.fromJson(json);
}

/// @nodoc
class _$CommentSchemaTearOff {
  const _$CommentSchemaTearOff();

// ignore: unused_element
  _CommentSchema call(
      {int id,
      int author,
      String authorEmail,
      String authorIp,
      String authorName,
      String authorUrl,
      String authorUserAgent,
      Map<String, dynamic> content,
      String date,
      String dateGmt,
      String link,
      int parent,
      int post,
      String status,
      String type,
      Map<String, dynamic> authorAvatarUrls,
      List<dynamic> meta}) {
    return _CommentSchema(
      id: id,
      author: author,
      authorEmail: authorEmail,
      authorIp: authorIp,
      authorName: authorName,
      authorUrl: authorUrl,
      authorUserAgent: authorUserAgent,
      content: content,
      date: date,
      dateGmt: dateGmt,
      link: link,
      parent: parent,
      post: post,
      status: status,
      type: type,
      authorAvatarUrls: authorAvatarUrls,
      meta: meta,
    );
  }

// ignore: unused_element
  CommentSchema fromJson(Map<String, Object> json) {
    return CommentSchema.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CommentSchema = _$CommentSchemaTearOff();

/// @nodoc
mixin _$CommentSchema {
  ///Unique identifier for the object.
  int get id;

  ///The ID of the user object, if author was a user.
  int get author;

  ///Email address for the object author.
  String get authorEmail;

  ///IP address for the object author.
  String get authorIp;

  ///Display name for the object author.
  String get authorName;

  ///URL for the object author.
  String get authorUrl;

  ///User agent for the object author.
  String get authorUserAgent;

  ///The content for the object.
  Map<String, dynamic> get content;

  ///The date the object was published, in the site's timezone.
  String get date;

  ///The date the object was published, as GMT.
  String get dateGmt;

  ///URL to the object.
  String get link;

  ///The ID for the parent of the object.
  int get parent;

  /// The ID of the associated post object.
  int get post;

  ///State of the object.
  String get status;

  ///Type of Comment for the object.
  String get type;

  ///Avatar URLs for the object author.
  Map<String, dynamic> get authorAvatarUrls;

  ///Meta fields.
  List<dynamic> get meta;

  Map<String, dynamic> toJson();
  $CommentSchemaCopyWith<CommentSchema> get copyWith;
}

/// @nodoc
abstract class $CommentSchemaCopyWith<$Res> {
  factory $CommentSchemaCopyWith(
          CommentSchema value, $Res Function(CommentSchema) then) =
      _$CommentSchemaCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int author,
      String authorEmail,
      String authorIp,
      String authorName,
      String authorUrl,
      String authorUserAgent,
      Map<String, dynamic> content,
      String date,
      String dateGmt,
      String link,
      int parent,
      int post,
      String status,
      String type,
      Map<String, dynamic> authorAvatarUrls,
      List<dynamic> meta});
}

/// @nodoc
class _$CommentSchemaCopyWithImpl<$Res>
    implements $CommentSchemaCopyWith<$Res> {
  _$CommentSchemaCopyWithImpl(this._value, this._then);

  final CommentSchema _value;
  // ignore: unused_field
  final $Res Function(CommentSchema) _then;

  @override
  $Res call({
    Object id = freezed,
    Object author = freezed,
    Object authorEmail = freezed,
    Object authorIp = freezed,
    Object authorName = freezed,
    Object authorUrl = freezed,
    Object authorUserAgent = freezed,
    Object content = freezed,
    Object date = freezed,
    Object dateGmt = freezed,
    Object link = freezed,
    Object parent = freezed,
    Object post = freezed,
    Object status = freezed,
    Object type = freezed,
    Object authorAvatarUrls = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      author: author == freezed ? _value.author : author as int,
      authorEmail:
          authorEmail == freezed ? _value.authorEmail : authorEmail as String,
      authorIp: authorIp == freezed ? _value.authorIp : authorIp as String,
      authorName:
          authorName == freezed ? _value.authorName : authorName as String,
      authorUrl: authorUrl == freezed ? _value.authorUrl : authorUrl as String,
      authorUserAgent: authorUserAgent == freezed
          ? _value.authorUserAgent
          : authorUserAgent as String,
      content:
          content == freezed ? _value.content : content as Map<String, dynamic>,
      date: date == freezed ? _value.date : date as String,
      dateGmt: dateGmt == freezed ? _value.dateGmt : dateGmt as String,
      link: link == freezed ? _value.link : link as String,
      parent: parent == freezed ? _value.parent : parent as int,
      post: post == freezed ? _value.post : post as int,
      status: status == freezed ? _value.status : status as String,
      type: type == freezed ? _value.type : type as String,
      authorAvatarUrls: authorAvatarUrls == freezed
          ? _value.authorAvatarUrls
          : authorAvatarUrls as Map<String, dynamic>,
      meta: meta == freezed ? _value.meta : meta as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$CommentSchemaCopyWith<$Res>
    implements $CommentSchemaCopyWith<$Res> {
  factory _$CommentSchemaCopyWith(
          _CommentSchema value, $Res Function(_CommentSchema) then) =
      __$CommentSchemaCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int author,
      String authorEmail,
      String authorIp,
      String authorName,
      String authorUrl,
      String authorUserAgent,
      Map<String, dynamic> content,
      String date,
      String dateGmt,
      String link,
      int parent,
      int post,
      String status,
      String type,
      Map<String, dynamic> authorAvatarUrls,
      List<dynamic> meta});
}

/// @nodoc
class __$CommentSchemaCopyWithImpl<$Res>
    extends _$CommentSchemaCopyWithImpl<$Res>
    implements _$CommentSchemaCopyWith<$Res> {
  __$CommentSchemaCopyWithImpl(
      _CommentSchema _value, $Res Function(_CommentSchema) _then)
      : super(_value, (v) => _then(v as _CommentSchema));

  @override
  _CommentSchema get _value => super._value as _CommentSchema;

  @override
  $Res call({
    Object id = freezed,
    Object author = freezed,
    Object authorEmail = freezed,
    Object authorIp = freezed,
    Object authorName = freezed,
    Object authorUrl = freezed,
    Object authorUserAgent = freezed,
    Object content = freezed,
    Object date = freezed,
    Object dateGmt = freezed,
    Object link = freezed,
    Object parent = freezed,
    Object post = freezed,
    Object status = freezed,
    Object type = freezed,
    Object authorAvatarUrls = freezed,
    Object meta = freezed,
  }) {
    return _then(_CommentSchema(
      id: id == freezed ? _value.id : id as int,
      author: author == freezed ? _value.author : author as int,
      authorEmail:
          authorEmail == freezed ? _value.authorEmail : authorEmail as String,
      authorIp: authorIp == freezed ? _value.authorIp : authorIp as String,
      authorName:
          authorName == freezed ? _value.authorName : authorName as String,
      authorUrl: authorUrl == freezed ? _value.authorUrl : authorUrl as String,
      authorUserAgent: authorUserAgent == freezed
          ? _value.authorUserAgent
          : authorUserAgent as String,
      content:
          content == freezed ? _value.content : content as Map<String, dynamic>,
      date: date == freezed ? _value.date : date as String,
      dateGmt: dateGmt == freezed ? _value.dateGmt : dateGmt as String,
      link: link == freezed ? _value.link : link as String,
      parent: parent == freezed ? _value.parent : parent as int,
      post: post == freezed ? _value.post : post as int,
      status: status == freezed ? _value.status : status as String,
      type: type == freezed ? _value.type : type as String,
      authorAvatarUrls: authorAvatarUrls == freezed
          ? _value.authorAvatarUrls
          : authorAvatarUrls as Map<String, dynamic>,
      meta: meta == freezed ? _value.meta : meta as List<dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommentSchema implements _CommentSchema {
  _$_CommentSchema(
      {this.id,
      this.author,
      this.authorEmail,
      this.authorIp,
      this.authorName,
      this.authorUrl,
      this.authorUserAgent,
      this.content,
      this.date,
      this.dateGmt,
      this.link,
      this.parent,
      this.post,
      this.status,
      this.type,
      this.authorAvatarUrls,
      this.meta});

  factory _$_CommentSchema.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentSchemaFromJson(json);

  @override

  ///Unique identifier for the object.
  final int id;
  @override

  ///The ID of the user object, if author was a user.
  final int author;
  @override

  ///Email address for the object author.
  final String authorEmail;
  @override

  ///IP address for the object author.
  final String authorIp;
  @override

  ///Display name for the object author.
  final String authorName;
  @override

  ///URL for the object author.
  final String authorUrl;
  @override

  ///User agent for the object author.
  final String authorUserAgent;
  @override

  ///The content for the object.
  final Map<String, dynamic> content;
  @override

  ///The date the object was published, in the site's timezone.
  final String date;
  @override

  ///The date the object was published, as GMT.
  final String dateGmt;
  @override

  ///URL to the object.
  final String link;
  @override

  ///The ID for the parent of the object.
  final int parent;
  @override

  /// The ID of the associated post object.
  final int post;
  @override

  ///State of the object.
  final String status;
  @override

  ///Type of Comment for the object.
  final String type;
  @override

  ///Avatar URLs for the object author.
  final Map<String, dynamic> authorAvatarUrls;
  @override

  ///Meta fields.
  final List<dynamic> meta;

  @override
  String toString() {
    return 'CommentSchema(id: $id, author: $author, authorEmail: $authorEmail, authorIp: $authorIp, authorName: $authorName, authorUrl: $authorUrl, authorUserAgent: $authorUserAgent, content: $content, date: $date, dateGmt: $dateGmt, link: $link, parent: $parent, post: $post, status: $status, type: $type, authorAvatarUrls: $authorAvatarUrls, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentSchema &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.authorEmail, authorEmail) ||
                const DeepCollectionEquality()
                    .equals(other.authorEmail, authorEmail)) &&
            (identical(other.authorIp, authorIp) ||
                const DeepCollectionEquality()
                    .equals(other.authorIp, authorIp)) &&
            (identical(other.authorName, authorName) ||
                const DeepCollectionEquality()
                    .equals(other.authorName, authorName)) &&
            (identical(other.authorUrl, authorUrl) ||
                const DeepCollectionEquality()
                    .equals(other.authorUrl, authorUrl)) &&
            (identical(other.authorUserAgent, authorUserAgent) ||
                const DeepCollectionEquality()
                    .equals(other.authorUserAgent, authorUserAgent)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.dateGmt, dateGmt) ||
                const DeepCollectionEquality()
                    .equals(other.dateGmt, dateGmt)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.parent, parent) ||
                const DeepCollectionEquality().equals(other.parent, parent)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.authorAvatarUrls, authorAvatarUrls) ||
                const DeepCollectionEquality()
                    .equals(other.authorAvatarUrls, authorAvatarUrls)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(authorEmail) ^
      const DeepCollectionEquality().hash(authorIp) ^
      const DeepCollectionEquality().hash(authorName) ^
      const DeepCollectionEquality().hash(authorUrl) ^
      const DeepCollectionEquality().hash(authorUserAgent) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(dateGmt) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(parent) ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(authorAvatarUrls) ^
      const DeepCollectionEquality().hash(meta);

  @override
  _$CommentSchemaCopyWith<_CommentSchema> get copyWith =>
      __$CommentSchemaCopyWithImpl<_CommentSchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentSchemaToJson(this);
  }
}

abstract class _CommentSchema implements CommentSchema {
  factory _CommentSchema(
      {int id,
      int author,
      String authorEmail,
      String authorIp,
      String authorName,
      String authorUrl,
      String authorUserAgent,
      Map<String, dynamic> content,
      String date,
      String dateGmt,
      String link,
      int parent,
      int post,
      String status,
      String type,
      Map<String, dynamic> authorAvatarUrls,
      List<dynamic> meta}) = _$_CommentSchema;

  factory _CommentSchema.fromJson(Map<String, dynamic> json) =
      _$_CommentSchema.fromJson;

  @override

  ///Unique identifier for the object.
  int get id;
  @override

  ///The ID of the user object, if author was a user.
  int get author;
  @override

  ///Email address for the object author.
  String get authorEmail;
  @override

  ///IP address for the object author.
  String get authorIp;
  @override

  ///Display name for the object author.
  String get authorName;
  @override

  ///URL for the object author.
  String get authorUrl;
  @override

  ///User agent for the object author.
  String get authorUserAgent;
  @override

  ///The content for the object.
  Map<String, dynamic> get content;
  @override

  ///The date the object was published, in the site's timezone.
  String get date;
  @override

  ///The date the object was published, as GMT.
  String get dateGmt;
  @override

  ///URL to the object.
  String get link;
  @override

  ///The ID for the parent of the object.
  int get parent;
  @override

  /// The ID of the associated post object.
  int get post;
  @override

  ///State of the object.
  String get status;
  @override

  ///Type of Comment for the object.
  String get type;
  @override

  ///Avatar URLs for the object author.
  Map<String, dynamic> get authorAvatarUrls;
  @override

  ///Meta fields.
  List<dynamic> get meta;
  @override
  _$CommentSchemaCopyWith<_CommentSchema> get copyWith;
}
