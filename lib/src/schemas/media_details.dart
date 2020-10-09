import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_details.freezed.dart';
part 'media_details.g.dart';

@freezed
abstract class MediaDetailsSchema with _$MediaDetailsSchema {
  factory MediaDetailsSchema({
    int width,
    int height,
    String file,
    Map<String, dynamic> sizes,
    Map<String, dynamic> imageMeta,
  }) = _MediaDetailsSchema;

  factory MediaDetailsSchema.fromJson(Map<String, dynamic> json) =>
      _$MediaDetailsSchemaFromJson(json);
}
