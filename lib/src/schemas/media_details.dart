import 'package:json_annotation/json_annotation.dart';

part 'media_details.g.dart';

@JsonSerializable()
class MediaDetailsSchema {
  final int width;
  final int height;
  final String file;
  final Map<String, dynamic> sizes;
  final Map<String, dynamic> imageMeta;

  MediaDetailsSchema({
    this.width,
    this.height,
    this.file,
    this.sizes,
    this.imageMeta,
  });

  factory MediaDetailsSchema.fromJson(Map<String, dynamic> json) =>
      _$MediaDetailsSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaDetailsSchemaToJson(this);
}
