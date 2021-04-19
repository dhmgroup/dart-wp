import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:wordpress_api/src/utils.dart';

class Post {
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

  ///The date the object was last modified, in the site's timezone
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

  ///A password to protect access to the content and excerpt.
  final String? password;

  ///Permalink template for the object.
  final String? permalinkTemplate;

  ///Slug automatically generated from the object title.
  final String? generatedSlug;

  ///The title for the object.
  final String? title;

  ///The content for the object.
  final String? content;

  ///The ID for the author of the object.
  final int? author;

  ///The excerpt for the object.
  final String? excerpt;

  ///The ID of the featured media for the object.
  final int? featuredMedia;

  ///Whether or not comments are open on the object.
  ///
  /// One of: "open", "closed"
  final String? commentStatus;

  ///Whether or not the object can be pinged.
  ///
  /// One of: "open", "closed"
  final String? pingStatus;

  ///The format for the object.
  ///
  /// One of: "standard", "aside", "chat", "gallery", "link", "image", "quote", "status", "video", "audio"
  final String? format;

  ///Meta fields.
  final dynamic meta;

  ///Whether or not the object should be treated as sticky.
  final bool? sticky;

  ///The theme file to use to display the object.
  final String? template;

  ///The terms assigned to the object in the category taxonomy.
  final List<int>? categories;

  ///The terms assigned to the object in the post_tag taxonomy.
  final List<int>? tags;
  Post({
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
    this.meta,
    this.sticky,
    this.template,
    this.categories,
    this.tags,
  });

  Post copyWith({
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
    String? password,
    String? permalinkTemplate,
    String? generatedSlug,
    String? title,
    String? content,
    int? author,
    String? excerpt,
    int? featuredMedia,
    String? commentStatus,
    String? pingStatus,
    String? format,
    dynamic meta,
    bool? sticky,
    String? template,
    List<int>? categories,
    List<int>? tags,
  }) {
    return Post(
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
      password: password ?? this.password,
      permalinkTemplate: permalinkTemplate ?? this.permalinkTemplate,
      generatedSlug: generatedSlug ?? this.generatedSlug,
      title: title ?? this.title,
      content: content ?? this.content,
      author: author ?? this.author,
      excerpt: excerpt ?? this.excerpt,
      featuredMedia: featuredMedia ?? this.featuredMedia,
      commentStatus: commentStatus ?? this.commentStatus,
      pingStatus: pingStatus ?? this.pingStatus,
      format: format ?? this.format,
      meta: meta ?? this.meta,
      sticky: sticky ?? this.sticky,
      template: template ?? this.template,
      categories: categories ?? this.categories,
      tags: tags ?? this.tags,
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
      'password': password,
      'permalink_template': permalinkTemplate,
      'generated_slug': generatedSlug,
      'title': title,
      'content': content,
      'author': author,
      'excerpt': excerpt,
      'featured_media': featuredMedia,
      'comment_status': commentStatus,
      'ping_status': pingStatus,
      'format': format,
      'meta': meta,
      'sticky': sticky,
      'template': template,
      'categories': categories,
      'tags': tags,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      date: map['date'],
      dateGmt: map['date_gmt'],
      guid: map['guid']['rendered'],
      id: map['id'],
      link: map['link'],
      modified: map['modified'],
      modifiedGmt: map['modified_gmt'],
      slug: map['slug'],
      status: map['status'],
      type: map['type'],
      password: map['password'],
      permalinkTemplate: map['permalink_template'],
      generatedSlug: map['generated_slug'],
      title: Utils.renderHtml(map['title']['rendered']),
      content: Utils.renderHtml(map['content']['rendered']),
      author: map['author'],
      excerpt: Utils.renderHtml(map['excerpt']['rendered']),
      featuredMedia: map['featured_media'],
      commentStatus: map['comment_status'],
      pingStatus: map['ping_status'],
      format: map['format'],
      meta: map['meta'],
      sticky: map['sticky'],
      template: map['template'],
      categories: List<int>.from(map['categories']),
      tags: List<int>.from(map['tags']),
      // embedded: Embedded?.fromMap(map['_embedded']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(date: $date, dateGmt: $dateGmt, guid: $guid, id: $id, link: $link, modified: $modified, modifiedGmt: $modifiedGmt, slug: $slug, status: $status, type: $type, password: $password, permalinkTemplate: $permalinkTemplate, generatedSlug: $generatedSlug, title: $title, content: $content, author: $author, excerpt: $excerpt, featuredMedia: $featuredMedia, commentStatus: $commentStatus, pingStatus: $pingStatus, format: $format, meta: $meta, sticky: $sticky, template: $template, categories: $categories, tags: $tags)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return o is Post &&
        o.date == date &&
        o.dateGmt == dateGmt &&
        o.guid == guid &&
        o.id == id &&
        o.link == link &&
        o.modified == modified &&
        o.modifiedGmt == modifiedGmt &&
        o.slug == slug &&
        o.status == status &&
        o.type == type &&
        o.password == password &&
        o.permalinkTemplate == permalinkTemplate &&
        o.generatedSlug == generatedSlug &&
        o.title == title &&
        o.content == content &&
        o.author == author &&
        o.excerpt == excerpt &&
        o.featuredMedia == featuredMedia &&
        o.commentStatus == commentStatus &&
        o.pingStatus == pingStatus &&
        o.format == format &&
        o.meta == meta &&
        o.sticky == sticky &&
        o.template == template &&
        listEquals(o.categories, categories) &&
        listEquals(o.tags, tags);
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
        password.hashCode ^
        permalinkTemplate.hashCode ^
        generatedSlug.hashCode ^
        title.hashCode ^
        content.hashCode ^
        author.hashCode ^
        excerpt.hashCode ^
        featuredMedia.hashCode ^
        commentStatus.hashCode ^
        pingStatus.hashCode ^
        format.hashCode ^
        meta.hashCode ^
        sticky.hashCode ^
        template.hashCode ^
        categories.hashCode ^
        tags.hashCode;
  }
}

List<Post>? parsePosts(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<Post>((json) => Post.fromMap(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<Post>((json) => Post.fromMap(json))
        .toList();
  }
}
