import 'package:json_annotation/json_annotation.dart';

part 'search.g.dart';

/// WordPress Search Endpoint Model /wp/v2/search
@JsonSerializable()
class SearchSchema {
  ///Unique identifier for the object.
  final int id;

  ///The title for the object.
  final String title;

  ///URL to the object.
  final String url;

  ///Object type.
  ///
  /// One of: "post"
  final String type;

  ///Object subtype.
  ///
  /// One of: "post", "page"
  final String subtype;

  SearchSchema({
    this.id,
    this.title,
    this.url,
    this.type,
    this.subtype,
  });

  /// Generate SearchSchema Model from JSON
  factory SearchSchema.fromJson(Map<String, dynamic> data) =>
      _$SearchSchemaFromJson(data);

  /// Convert SearchSchema Model to JSON
  Map<String, dynamic> toJson() => _$SearchSchemaToJson(this);
}
