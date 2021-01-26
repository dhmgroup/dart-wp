import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:wordpress_api/src/utils.dart';

class Comment {
  ///Unique identifier for the object.
  final int id;

  ///The ID of the user object, if author was a user.
  final int author;

  ///Email address for the object author.
  final String authorEmail;

  ///IP address for the object author.
  final String authorIp;

  ///Display name for the object author.
  final String authorName;

  ///URL for the object author.
  final String authorUrl;

  ///User agent for the object author.
  final String authorUserAgent;

  ///The content for the object.
  final String content;

  ///The date the object was published, in the site's timezone.
  final String date;

  ///The date the object was published, as GMT.
  final String dateGmt;

  ///URL to the object.
  final String link;

  ///The ID for the parent of the object.
  final int parent;

  /// The ID of the associated post object.
  final int post;

  ///State of the object.
  final String status;

  ///Type of Comment for the object.
  final String type;

  ///Avatar URLs for the object author.
  final Map<String, dynamic> authorAvatarUrls;

  ///Meta fields.
  final dynamic meta;
  Comment({
    this.id,
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
    this.meta,
  });

  Comment copyWith({
    int id,
    int author,
    String authorEmail,
    String authorIp,
    String authorName,
    String authorUrl,
    String authorUserAgent,
    String content,
    String date,
    String dateGmt,
    String link,
    int parent,
    int post,
    String status,
    String type,
    Map<String, dynamic> authorAvatarUrls,
    dynamic meta,
  }) {
    return Comment(
      id: id ?? this.id,
      author: author ?? this.author,
      authorEmail: authorEmail ?? this.authorEmail,
      authorIp: authorIp ?? this.authorIp,
      authorName: authorName ?? this.authorName,
      authorUrl: authorUrl ?? this.authorUrl,
      authorUserAgent: authorUserAgent ?? this.authorUserAgent,
      content: content ?? this.content,
      date: date ?? this.date,
      dateGmt: dateGmt ?? this.dateGmt,
      link: link ?? this.link,
      parent: parent ?? this.parent,
      post: post ?? this.post,
      status: status ?? this.status,
      type: type ?? this.type,
      authorAvatarUrls: authorAvatarUrls ?? this.authorAvatarUrls,
      meta: meta ?? this.meta,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'author': author,
      'author_email': authorEmail,
      'author_ip': authorIp,
      'author_name': authorName,
      'author_url': authorUrl,
      'author_user_agent': authorUserAgent,
      'content': content,
      'date': date,
      'date_gmt': dateGmt,
      'link': link,
      'parent': parent,
      'post': post,
      'status': status,
      'type': type,
      'author_avatar_urls': authorAvatarUrls,
      'meta': meta,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Comment(
      id: map['id'],
      author: map['author'],
      authorEmail: map['author_email'],
      authorIp: map['author_ip'],
      authorName: map['author_name'],
      authorUrl: map['author_url'],
      authorUserAgent: map['author_user_agent'],
      content: Utils.renderHtml(map['content']['rendered']),
      date: map['date'],
      dateGmt: map['date_gmt'],
      link: map['link'],
      parent: map['parent'],
      post: map['post'],
      status: map['status'],
      type: map['type'],
      authorAvatarUrls: Map<String, dynamic>.from(map['author_avatar_urls']),
      meta: map['meta'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Comment.fromJson(String source) =>
      Comment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Comment(id: $id, author: $author, authorEmail: $authorEmail, authorIp: $authorIp, authorName: $authorName, authorUrl: $authorUrl, authorUserAgent: $authorUserAgent, content: $content, date: $date, dateGmt: $dateGmt, link: $link, parent: $parent, post: $post, status: $status, type: $type, authorAvatarUrls: $authorAvatarUrls, meta: $meta)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return o is Comment &&
        o.id == id &&
        o.author == author &&
        o.authorEmail == authorEmail &&
        o.authorIp == authorIp &&
        o.authorName == authorName &&
        o.authorUrl == authorUrl &&
        o.authorUserAgent == authorUserAgent &&
        o.content == content &&
        o.date == date &&
        o.dateGmt == dateGmt &&
        o.link == link &&
        o.parent == parent &&
        o.post == post &&
        o.status == status &&
        o.type == type &&
        mapEquals(o.authorAvatarUrls, authorAvatarUrls) &&
        o.meta == meta;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        author.hashCode ^
        authorEmail.hashCode ^
        authorIp.hashCode ^
        authorName.hashCode ^
        authorUrl.hashCode ^
        authorUserAgent.hashCode ^
        content.hashCode ^
        date.hashCode ^
        dateGmt.hashCode ^
        link.hashCode ^
        parent.hashCode ^
        post.hashCode ^
        status.hashCode ^
        type.hashCode ^
        authorAvatarUrls.hashCode ^
        meta.hashCode;
  }
}

List<Comment> parseComments(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<Comment>((json) => Comment.fromMap(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<Comment>((json) => Comment.fromMap(json))
        .toList();
  }
}
