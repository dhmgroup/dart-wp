import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:wordpress_api/src/models.dart' show User, Comment, Media;

class Embedded {
  /// Embedded author
  final List<User> author;

  /// Embedded Comments/Replies
  final List<Comment> replies;

  /// Embedded Featured Media
  final List<Media> media;

  /// Embedded WP Terms
  /// The embedded terms may include categories, tags and more.
  final List<List> terms;
  Embedded({
    this.author,
    this.replies,
    this.media,
    this.terms,
  });

  Embedded copyWith({
    List<User> author,
    List<List<Comment>> replies,
    List<Media> media,
    List<List> terms,
  }) {
    return Embedded(
      author: author ?? this.author,
      replies: replies ?? this.replies,
      media: media ?? this.media,
      terms: terms ?? this.terms,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'author': author?.map((x) => x?.toMap())?.toList(),
      'replies': replies?.map((x) => x?.toMap())?.toList(),
      'media': media?.map((x) => x?.toMap())?.toList(),
      'terms': terms,
    };
  }

  factory Embedded.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Embedded(
      author: List<User>.from(map['author']?.map((x) => User.fromMap(x))),
      replies:
          List<Comment>.from(map['replies']?.map((x) => Comment.fromMap(x))),
      media: List<Media>.from(
          map['wp:featuredmedia']?.map((x) => Media.fromMap(x))),
      terms: List<List>.from(map['wp:terms']?.map((x) => x)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Embedded.fromJson(String source) =>
      Embedded.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Embedded(author: $author, replies: $replies, media: $media, terms: $terms)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return o is Embedded &&
        listEquals(o.author, author) &&
        listEquals(o.replies, replies) &&
        listEquals(o.media, media) &&
        listEquals(o.terms, terms);
  }

  @override
  int get hashCode {
    return author.hashCode ^ replies.hashCode ^ media.hashCode ^ terms.hashCode;
  }
}
