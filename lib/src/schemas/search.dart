import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
abstract class SearchSchema with _$SearchSchema {
  factory SearchSchema({
    ///Unique identifier for the object.
    int id,

    ///The title for the object.
    String title,

    ///URL to the object.
    String url,

    ///Object type.
    ///
    /// One of: "post"
    String type,

    ///Object subtype.
    ///
    /// One of: "post", "page"
    String subtype,
  }) = _SearchSchema;

  factory SearchSchema.fromJson(Map<String, dynamic> json) =>
      _$SearchSchemaFromJson(json);
}
