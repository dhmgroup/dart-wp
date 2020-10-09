import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordpress_api/src/schemas.dart';

part 'embedded.freezed.dart';
part 'embedded.g.dart';

/// Wordpress embedded data
@freezed
abstract class EmbeddedSchema with _$EmbeddedSchema {
  factory EmbeddedSchema({
    /// Embedded author
    List<UserSchema> author,

    /// Embedded Comments/Replies
    List<List<CommentSchema>> replies,

    /// Embedded Featured Media
    @JsonKey(name: "wp:featuredmedia") List<MediaSchema> media,
    @JsonKey(name: "wp:terms") List<List> terms,
  }) = _EmbeddedSchema;

  factory EmbeddedSchema.fromJson(Map<String, dynamic> json) =>
      _$EmbeddedSchemaFromJson(json);
}
