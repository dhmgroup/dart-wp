import 'dart:convert';

import 'package:wordpress_api/src/utils.dart';

class Page {
  ///The date the object was published, in the site's timezone.
  final String date;

  ///The date the object was published, as GMT.
  final String dateGmt;

  ///The globally unique identifier for the object.
  final String guid;

  ///Unique identifier for the object.
  final int id;

  ///URL to the object.
  final String link;

  ///The date the object was last modified, in the site's timezone.
  final String modified;

  ///The date the object was last modified, as GMT.
  final String modifitedGmt;

  ///An alphanumeric identifier for the object unique to its type.
  final String slug;

  ///A named status for the object.
  ///
  /// One of: "publish", "future", "draft", "pending", "private"
  final String status;

  ///Type of Post for the object.
  final String type;

  ///A password to protect access to the content and excerpt.
  final String password;

  ///Permalink template for the object.
  final String permalinkTemplate;

  ///Slug automatically generated from the object title.
  final String generatedSlug;

  ///The ID for the parent of the object.
  final int parent;

  ///The title for the object.
  final String title;

  ///The content for the object.
  final String content;

  ///The ID for the author of the object.
  final int author;

  ///The excerpt for the object.
  final String excerpt;

  ///The ID of the featured media for the object.
  final int featuredMedia;

  ///Whether or not comments are open on the object.
  ///
  /// One of: "open", "closed"
  final String commentStatus;

  ///Whether or not the object can be pinged.
  ///
  /// One of: "open", "closed"
  final String pingStatus;

  ///The order of the object in relation to other object of its type.
  final int menuOrder;

  ///Meta fields.
  final dynamic meta;

  ///The theme file to use to display the object.
  final String template;
  Page({
    this.date,
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
    this.template,
  });

  Page copyWith({
    String date,
    String dateGmt,
    String guid,
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
    String title,
    String content,
    int author,
    String excerpt,
    int featuredMedia,
    String commentStatus,
    String pingStatus,
    int menuOrder,
    dynamic meta,
    String template,
  }) {
    return Page(
      date: date ?? this.date,
      dateGmt: dateGmt ?? this.dateGmt,
      guid: guid ?? this.guid,
      id: id ?? this.id,
      link: link ?? this.link,
      modified: modified ?? this.modified,
      modifitedGmt: modifitedGmt ?? this.modifitedGmt,
      slug: slug ?? this.slug,
      status: status ?? this.status,
      type: type ?? this.type,
      password: password ?? this.password,
      permalinkTemplate: permalinkTemplate ?? this.permalinkTemplate,
      generatedSlug: generatedSlug ?? this.generatedSlug,
      parent: parent ?? this.parent,
      title: title ?? this.title,
      content: content ?? this.content,
      author: author ?? this.author,
      excerpt: excerpt ?? this.excerpt,
      featuredMedia: featuredMedia ?? this.featuredMedia,
      commentStatus: commentStatus ?? this.commentStatus,
      pingStatus: pingStatus ?? this.pingStatus,
      menuOrder: menuOrder ?? this.menuOrder,
      meta: meta ?? this.meta,
      template: template ?? this.template,
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
      'modifitedGmt': modifitedGmt,
      'slug': slug,
      'status': status,
      'type': type,
      'password': password,
      'permalink_template': permalinkTemplate,
      'generated_slug': generatedSlug,
      'parent': parent,
      'title': title,
      'content': content,
      'author': author,
      'excerpt': excerpt,
      'featured_media': featuredMedia,
      'comment_status': commentStatus,
      'ping_status': pingStatus,
      'menuOrder': menuOrder,
      'meta': meta,
      'template': template,
    };
  }

  factory Page.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Page(
      date: map['date'],
      dateGmt: map['date_gmt'],
      guid: map['guid']['rendered'],
      id: map['id'],
      link: map['link'],
      modified: map['modified'],
      modifitedGmt: map['modifited_gmt'],
      slug: map['slug'],
      status: map['status'],
      type: map['type'],
      password: map['password'],
      permalinkTemplate: map['permalink_template'],
      generatedSlug: map['generated_slug'],
      parent: map['parent'],
      title: Utils.renderHtml(map['title']['rendered']),
      content: Utils.renderHtml(map['content']['rendered']),
      author: map['author'],
      excerpt: Utils.renderHtml(map['excerpt']['rendered']),
      featuredMedia: map['featured_media'],
      commentStatus: map['comment_status'],
      pingStatus: map['ping_status'],
      menuOrder: map['menu_order'],
      meta: map['meta'],
      template: map['template'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Page.fromJson(String source) => Page.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Page(date: $date, dateGmt: $dateGmt, guid: $guid, id: $id, link: $link, modified: $modified, modifitedGmt: $modifitedGmt, slug: $slug, status: $status, type: $type, password: $password, permalinkTemplate: $permalinkTemplate, generatedSlug: $generatedSlug, parent: $parent, title: $title, content: $content, author: $author, excerpt: $excerpt, featuredMedia: $featuredMedia, commentStatus: $commentStatus, pingStatus: $pingStatus, menuOrder: $menuOrder, meta: $meta, template: $template)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Page &&
        o.date == date &&
        o.dateGmt == dateGmt &&
        o.guid == guid &&
        o.id == id &&
        o.link == link &&
        o.modified == modified &&
        o.modifitedGmt == modifitedGmt &&
        o.slug == slug &&
        o.status == status &&
        o.type == type &&
        o.password == password &&
        o.permalinkTemplate == permalinkTemplate &&
        o.generatedSlug == generatedSlug &&
        o.parent == parent &&
        o.title == title &&
        o.content == content &&
        o.author == author &&
        o.excerpt == excerpt &&
        o.featuredMedia == featuredMedia &&
        o.commentStatus == commentStatus &&
        o.pingStatus == pingStatus &&
        o.menuOrder == menuOrder &&
        o.meta == meta &&
        o.template == template;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        dateGmt.hashCode ^
        guid.hashCode ^
        id.hashCode ^
        link.hashCode ^
        modified.hashCode ^
        modifitedGmt.hashCode ^
        slug.hashCode ^
        status.hashCode ^
        type.hashCode ^
        password.hashCode ^
        permalinkTemplate.hashCode ^
        generatedSlug.hashCode ^
        parent.hashCode ^
        title.hashCode ^
        content.hashCode ^
        author.hashCode ^
        excerpt.hashCode ^
        featuredMedia.hashCode ^
        commentStatus.hashCode ^
        pingStatus.hashCode ^
        menuOrder.hashCode ^
        meta.hashCode ^
        template.hashCode;
  }
}

List<Page> parsePages(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<Page>((json) => Page.fromMap(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<Page>((json) => Page.fromMap(json))
        .toList();
  }
}
