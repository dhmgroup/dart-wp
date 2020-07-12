import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

/// WordPress Tag Endpoint Model /wp/v2/tags
@JsonSerializable()
class TagSchema {
  ///Unique identifier for the term.
  final int id;

  ///Number of published posts for the term.
  final int count;

  ///HTML description of the term.
  final String description;

  ///URL of the term.
  final String link;

  ///HTML title for the term.
  final String name;

  ///An alphanumeric identifier for the term unique to its type.
  final String slug;

  ///Type attribution for the term.
  ///
  /// One of: "category", "post_tag", "nav_menu", "linkCategory", "postFormat"
  final String taxonomy;

  ///Meta fields.

  final Map<String, dynamic> meta;

  TagSchema({
    this.id,
    this.count,
    this.description,
    this.link,
    this.name,
    this.slug,
    this.taxonomy,
    this.meta,
  });

  /// Generate Tag Model from JSON
  factory TagSchema.fromJson(Map<String, dynamic> data) =>
      _$TagSchemaFromJson(data);

  /// Convert Tag Model to JSON
  Map<String, dynamic> toJson() => _$TagSchemaToJson(this);
}
