import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

/// Wordpress Categories Endpoint /wp/v2/categories
@freezed
abstract class CategorySchema with _$CategorySchema {
  factory CategorySchema({
    ///Unique identifier for the term.
    int id,

    ///Number of published posts for the term.
    int count,

    ///HTML description of the term.
    String description,

    ///URL of the term.
    String link,

    ///HTML title for the term.
    String name,

    ///An alphanumeric identifier for the term unique to its type.
    String slug,

    ///Type attribution for the term.
    ///
    ///One of: "category", "post_tag", "nav_menu", "linkCategory", "postFormat"
    String taxonomy,

    ///The parent term ID.
    int parent,

    ///Meta fields.
    List meta,
  }) = _CategorySchema;

  factory CategorySchema.fromJson(Map<String, dynamic> json) =>
      _$CategorySchemaFromJson(json);
}
