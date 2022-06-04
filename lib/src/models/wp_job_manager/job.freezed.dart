// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  /// Unique identifier for the post.
  ///
  int? get id => throw _privateConstructorUsedError;

  /// The date the post was published, in the site's timezone.
  ///
  /// `String?`
  String? get date => throw _privateConstructorUsedError;

  /// The date the post was published, as GMT.
  ///
  @JsonKey(name: 'date_gmt')
  String? get dateGmt => throw _privateConstructorUsedError;

  /// The globally unique identifier for the post.
  ///
  RenderedObject? get guid => throw _privateConstructorUsedError;

  /// The date the post was last modified, in the site's timezone.
  ///
  String? get modified => throw _privateConstructorUsedError;

  /// The date the post was last modified, as GMT.
  ///
  @JsonKey(name: 'modified_gmt')
  String? get modifiedGmt => throw _privateConstructorUsedError;

  /// An alphanumeric identifier for the post unique to its type.
  ///
  String? get slug => throw _privateConstructorUsedError;

  /// A named status for the object.
  ///
  /// One of: "publish", "future", "draft", "pending", "private"
  String? get status => throw _privateConstructorUsedError;

  /// Type of post.
  ///
  String? get type => throw _privateConstructorUsedError;

  /// URL to the post
  ///
  String? get link => throw _privateConstructorUsedError;

  /// The title for the post.
  ///
  RenderedObject? get title => throw _privateConstructorUsedError;

  /// The content for the post.
  ///
  RenderedObject? get content => throw _privateConstructorUsedError;

  /// The ID for the author of the post.
  ///
  int? get author => throw _privateConstructorUsedError;

  /// The ID of the featured media for the post.
  ///
  @JsonKey(name: 'featured_media')
  int? get featuredMedia => throw _privateConstructorUsedError;

  /// The theme file to use to display the post.
  ///
  String? get template => throw _privateConstructorUsedError;

  /// `JobMeta`
  ///
  JobMeta? get meta => throw _privateConstructorUsedError;

  /// A `List` of job listing region IDs
  ///
  @JsonKey(name: 'job_listing_region')
  List<int?>? get jobListingRegion => throw _privateConstructorUsedError;

  /// A `List` of job category IDs
  ///
  @JsonKey(name: 'job-categories')
  List<int?>? get jobCategories => throw _privateConstructorUsedError;

  /// A `List` of job type IDs
  ///
  @JsonKey(name: 'job-types')
  List<int?>? get jobTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? date,
      @JsonKey(name: 'date_gmt') String? dateGmt,
      RenderedObject? guid,
      String? modified,
      @JsonKey(name: 'modified_gmt') String? modifiedGmt,
      String? slug,
      String? status,
      String? type,
      String? link,
      RenderedObject? title,
      RenderedObject? content,
      int? author,
      @JsonKey(name: 'featured_media') int? featuredMedia,
      String? template,
      JobMeta? meta,
      @JsonKey(name: 'job_listing_region') List<int?>? jobListingRegion,
      @JsonKey(name: 'job-categories') List<int?>? jobCategories,
      @JsonKey(name: 'job-types') List<int?>? jobTypes});

  $RenderedObjectCopyWith<$Res>? get guid;
  $RenderedObjectCopyWith<$Res>? get title;
  $RenderedObjectCopyWith<$Res>? get content;
  $JobMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$JobCopyWithImpl<$Res> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  final Job _value;
  // ignore: unused_field
  final $Res Function(Job) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? dateGmt = freezed,
    Object? guid = freezed,
    Object? modified = freezed,
    Object? modifiedGmt = freezed,
    Object? slug = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? featuredMedia = freezed,
    Object? template = freezed,
    Object? meta = freezed,
    Object? jobListingRegion = freezed,
    Object? jobCategories = freezed,
    Object? jobTypes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      dateGmt: dateGmt == freezed
          ? _value.dateGmt
          : dateGmt // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as RenderedObject?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedGmt: modifiedGmt == freezed
          ? _value.modifiedGmt
          : modifiedGmt // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as RenderedObject?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as RenderedObject?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int?,
      featuredMedia: featuredMedia == freezed
          ? _value.featuredMedia
          : featuredMedia // ignore: cast_nullable_to_non_nullable
              as int?,
      template: template == freezed
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as JobMeta?,
      jobListingRegion: jobListingRegion == freezed
          ? _value.jobListingRegion
          : jobListingRegion // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      jobCategories: jobCategories == freezed
          ? _value.jobCategories
          : jobCategories // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      jobTypes: jobTypes == freezed
          ? _value.jobTypes
          : jobTypes // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
    ));
  }

  @override
  $RenderedObjectCopyWith<$Res>? get guid {
    if (_value.guid == null) {
      return null;
    }

    return $RenderedObjectCopyWith<$Res>(_value.guid!, (value) {
      return _then(_value.copyWith(guid: value));
    });
  }

  @override
  $RenderedObjectCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $RenderedObjectCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value));
    });
  }

  @override
  $RenderedObjectCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $RenderedObjectCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value));
    });
  }

  @override
  $JobMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $JobMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$$_JobCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$_JobCopyWith(_$_Job value, $Res Function(_$_Job) then) =
      __$$_JobCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? date,
      @JsonKey(name: 'date_gmt') String? dateGmt,
      RenderedObject? guid,
      String? modified,
      @JsonKey(name: 'modified_gmt') String? modifiedGmt,
      String? slug,
      String? status,
      String? type,
      String? link,
      RenderedObject? title,
      RenderedObject? content,
      int? author,
      @JsonKey(name: 'featured_media') int? featuredMedia,
      String? template,
      JobMeta? meta,
      @JsonKey(name: 'job_listing_region') List<int?>? jobListingRegion,
      @JsonKey(name: 'job-categories') List<int?>? jobCategories,
      @JsonKey(name: 'job-types') List<int?>? jobTypes});

  @override
  $RenderedObjectCopyWith<$Res>? get guid;
  @override
  $RenderedObjectCopyWith<$Res>? get title;
  @override
  $RenderedObjectCopyWith<$Res>? get content;
  @override
  $JobMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_JobCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res>
    implements _$$_JobCopyWith<$Res> {
  __$$_JobCopyWithImpl(_$_Job _value, $Res Function(_$_Job) _then)
      : super(_value, (v) => _then(v as _$_Job));

  @override
  _$_Job get _value => super._value as _$_Job;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? dateGmt = freezed,
    Object? guid = freezed,
    Object? modified = freezed,
    Object? modifiedGmt = freezed,
    Object? slug = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? featuredMedia = freezed,
    Object? template = freezed,
    Object? meta = freezed,
    Object? jobListingRegion = freezed,
    Object? jobCategories = freezed,
    Object? jobTypes = freezed,
  }) {
    return _then(_$_Job(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      dateGmt: dateGmt == freezed
          ? _value.dateGmt
          : dateGmt // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as RenderedObject?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedGmt: modifiedGmt == freezed
          ? _value.modifiedGmt
          : modifiedGmt // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as RenderedObject?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as RenderedObject?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int?,
      featuredMedia: featuredMedia == freezed
          ? _value.featuredMedia
          : featuredMedia // ignore: cast_nullable_to_non_nullable
              as int?,
      template: template == freezed
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as JobMeta?,
      jobListingRegion: jobListingRegion == freezed
          ? _value._jobListingRegion
          : jobListingRegion // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      jobCategories: jobCategories == freezed
          ? _value._jobCategories
          : jobCategories // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      jobTypes: jobTypes == freezed
          ? _value._jobTypes
          : jobTypes // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Job implements _Job {
  _$_Job(
      {this.id,
      this.date,
      @JsonKey(name: 'date_gmt') this.dateGmt,
      this.guid,
      this.modified,
      @JsonKey(name: 'modified_gmt') this.modifiedGmt,
      this.slug,
      this.status,
      this.type,
      this.link,
      this.title,
      this.content,
      this.author,
      @JsonKey(name: 'featured_media') this.featuredMedia,
      this.template,
      this.meta,
      @JsonKey(name: 'job_listing_region') final List<int?>? jobListingRegion,
      @JsonKey(name: 'job-categories') final List<int?>? jobCategories,
      @JsonKey(name: 'job-types') final List<int?>? jobTypes})
      : _jobListingRegion = jobListingRegion,
        _jobCategories = jobCategories,
        _jobTypes = jobTypes;

  factory _$_Job.fromJson(Map<String, dynamic> json) => _$$_JobFromJson(json);

  /// Unique identifier for the post.
  ///
  @override
  final int? id;

  /// The date the post was published, in the site's timezone.
  ///
  /// `String?`
  @override
  final String? date;

  /// The date the post was published, as GMT.
  ///
  @override
  @JsonKey(name: 'date_gmt')
  final String? dateGmt;

  /// The globally unique identifier for the post.
  ///
  @override
  final RenderedObject? guid;

  /// The date the post was last modified, in the site's timezone.
  ///
  @override
  final String? modified;

  /// The date the post was last modified, as GMT.
  ///
  @override
  @JsonKey(name: 'modified_gmt')
  final String? modifiedGmt;

  /// An alphanumeric identifier for the post unique to its type.
  ///
  @override
  final String? slug;

  /// A named status for the object.
  ///
  /// One of: "publish", "future", "draft", "pending", "private"
  @override
  final String? status;

  /// Type of post.
  ///
  @override
  final String? type;

  /// URL to the post
  ///
  @override
  final String? link;

  /// The title for the post.
  ///
  @override
  final RenderedObject? title;

  /// The content for the post.
  ///
  @override
  final RenderedObject? content;

  /// The ID for the author of the post.
  ///
  @override
  final int? author;

  /// The ID of the featured media for the post.
  ///
  @override
  @JsonKey(name: 'featured_media')
  final int? featuredMedia;

  /// The theme file to use to display the post.
  ///
  @override
  final String? template;

  /// `JobMeta`
  ///
  @override
  final JobMeta? meta;

  /// A `List` of job listing region IDs
  ///
  final List<int?>? _jobListingRegion;

  /// A `List` of job listing region IDs
  ///
  @override
  @JsonKey(name: 'job_listing_region')
  List<int?>? get jobListingRegion {
    final value = _jobListingRegion;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// A `List` of job category IDs
  ///
  final List<int?>? _jobCategories;

  /// A `List` of job category IDs
  ///
  @override
  @JsonKey(name: 'job-categories')
  List<int?>? get jobCategories {
    final value = _jobCategories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// A `List` of job type IDs
  ///
  final List<int?>? _jobTypes;

  /// A `List` of job type IDs
  ///
  @override
  @JsonKey(name: 'job-types')
  List<int?>? get jobTypes {
    final value = _jobTypes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Job(id: $id, date: $date, dateGmt: $dateGmt, guid: $guid, modified: $modified, modifiedGmt: $modifiedGmt, slug: $slug, status: $status, type: $type, link: $link, title: $title, content: $content, author: $author, featuredMedia: $featuredMedia, template: $template, meta: $meta, jobListingRegion: $jobListingRegion, jobCategories: $jobCategories, jobTypes: $jobTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Job &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.dateGmt, dateGmt) &&
            const DeepCollectionEquality().equals(other.guid, guid) &&
            const DeepCollectionEquality().equals(other.modified, modified) &&
            const DeepCollectionEquality()
                .equals(other.modifiedGmt, modifiedGmt) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality()
                .equals(other.featuredMedia, featuredMedia) &&
            const DeepCollectionEquality().equals(other.template, template) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality()
                .equals(other._jobListingRegion, _jobListingRegion) &&
            const DeepCollectionEquality()
                .equals(other._jobCategories, _jobCategories) &&
            const DeepCollectionEquality().equals(other._jobTypes, _jobTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(dateGmt),
        const DeepCollectionEquality().hash(guid),
        const DeepCollectionEquality().hash(modified),
        const DeepCollectionEquality().hash(modifiedGmt),
        const DeepCollectionEquality().hash(slug),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(link),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(content),
        const DeepCollectionEquality().hash(author),
        const DeepCollectionEquality().hash(featuredMedia),
        const DeepCollectionEquality().hash(template),
        const DeepCollectionEquality().hash(meta),
        const DeepCollectionEquality().hash(_jobListingRegion),
        const DeepCollectionEquality().hash(_jobCategories),
        const DeepCollectionEquality().hash(_jobTypes)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_JobCopyWith<_$_Job> get copyWith =>
      __$$_JobCopyWithImpl<_$_Job>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobToJson(this);
  }
}

abstract class _Job implements Job {
  factory _Job(
      {final int? id,
      final String? date,
      @JsonKey(name: 'date_gmt') final String? dateGmt,
      final RenderedObject? guid,
      final String? modified,
      @JsonKey(name: 'modified_gmt') final String? modifiedGmt,
      final String? slug,
      final String? status,
      final String? type,
      final String? link,
      final RenderedObject? title,
      final RenderedObject? content,
      final int? author,
      @JsonKey(name: 'featured_media') final int? featuredMedia,
      final String? template,
      final JobMeta? meta,
      @JsonKey(name: 'job_listing_region') final List<int?>? jobListingRegion,
      @JsonKey(name: 'job-categories') final List<int?>? jobCategories,
      @JsonKey(name: 'job-types') final List<int?>? jobTypes}) = _$_Job;

  factory _Job.fromJson(Map<String, dynamic> json) = _$_Job.fromJson;

  @override

  /// Unique identifier for the post.
  ///
  int? get id => throw _privateConstructorUsedError;
  @override

  /// The date the post was published, in the site's timezone.
  ///
  /// `String?`
  String? get date => throw _privateConstructorUsedError;
  @override

  /// The date the post was published, as GMT.
  ///
  @JsonKey(name: 'date_gmt')
  String? get dateGmt => throw _privateConstructorUsedError;
  @override

  /// The globally unique identifier for the post.
  ///
  RenderedObject? get guid => throw _privateConstructorUsedError;
  @override

  /// The date the post was last modified, in the site's timezone.
  ///
  String? get modified => throw _privateConstructorUsedError;
  @override

  /// The date the post was last modified, as GMT.
  ///
  @JsonKey(name: 'modified_gmt')
  String? get modifiedGmt => throw _privateConstructorUsedError;
  @override

  /// An alphanumeric identifier for the post unique to its type.
  ///
  String? get slug => throw _privateConstructorUsedError;
  @override

  /// A named status for the object.
  ///
  /// One of: "publish", "future", "draft", "pending", "private"
  String? get status => throw _privateConstructorUsedError;
  @override

  /// Type of post.
  ///
  String? get type => throw _privateConstructorUsedError;
  @override

  /// URL to the post
  ///
  String? get link => throw _privateConstructorUsedError;
  @override

  /// The title for the post.
  ///
  RenderedObject? get title => throw _privateConstructorUsedError;
  @override

  /// The content for the post.
  ///
  RenderedObject? get content => throw _privateConstructorUsedError;
  @override

  /// The ID for the author of the post.
  ///
  int? get author => throw _privateConstructorUsedError;
  @override

  /// The ID of the featured media for the post.
  ///
  @JsonKey(name: 'featured_media')
  int? get featuredMedia => throw _privateConstructorUsedError;
  @override

  /// The theme file to use to display the post.
  ///
  String? get template => throw _privateConstructorUsedError;
  @override

  /// `JobMeta`
  ///
  JobMeta? get meta => throw _privateConstructorUsedError;
  @override

  /// A `List` of job listing region IDs
  ///
  @JsonKey(name: 'job_listing_region')
  List<int?>? get jobListingRegion => throw _privateConstructorUsedError;
  @override

  /// A `List` of job category IDs
  ///
  @JsonKey(name: 'job-categories')
  List<int?>? get jobCategories => throw _privateConstructorUsedError;
  @override

  /// A `List` of job type IDs
  ///
  @JsonKey(name: 'job-types')
  List<int?>? get jobTypes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JobCopyWith<_$_Job> get copyWith => throw _privateConstructorUsedError;
}
