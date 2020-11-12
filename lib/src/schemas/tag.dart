import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
abstract class TagSchema with _$TagSchema {
  factory TagSchema({
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
    /// One of: "category", "post_tag", "nav_menu", "linkCategory", "postFormat"
    String taxonomy,

    ///Meta fields.
    dynamic meta,
  }) = _TagSchema;

  factory TagSchema.fromJson(Map<String, dynamic> json) =>
      _$TagSchemaFromJson(json);
}
