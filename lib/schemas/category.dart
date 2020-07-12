import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

/// Wordpress Categories Endpoint /wp/v2/categories
@JsonSerializable()
class CategorySchema {
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
  ///One of: "category", "post_tag", "nav_menu", "linkCategory", "postFormat"
  final String taxonomy;

  ///The parent term ID.
  final int parent;

  ///Meta fields.
  final Map<String, dynamic> meta;

  CategorySchema({
    this.id,
    this.count,
    this.description,
    this.link,
    this.name,
    this.slug,
    this.taxonomy,
    this.parent,
    this.meta,
  });

  /// Generate CategorySchema Model from JSON
  factory CategorySchema.fromJson(Map<String, dynamic> data) =>
      _$CategorySchemaFromJson(data);

  /// Convert CategorySchema Model to JSON
  Map<String, dynamic> toJson() => _$CategorySchemaToJson(this);
}
