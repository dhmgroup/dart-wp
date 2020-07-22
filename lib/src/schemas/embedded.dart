import 'package:json_annotation/json_annotation.dart';
import 'package:wordpress_api/src/schemas.dart';

part 'embedded.g.dart';

/// Wordpress embedded data
@JsonSerializable()
class EmbeddedSchema {
  /// Embedded author
  final List<UserSchema> author;

  /// Embedded Comments/Replies
  final List<List<CommentSchema>> replies;

  /// Embedded Featured Media
  @JsonKey(name: "wp:featuredmedia")
  final List<MediaSchema> media;
  @JsonKey(name: "wp:terms")
  final List<List> terms;

  EmbeddedSchema({
    this.author,
    this.media,
    this.replies,
    this.terms,
  });

  factory EmbeddedSchema.fromJson(Map<String, dynamic> json) =>
      _$EmbeddedSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$EmbeddedSchemaToJson(this);
}
