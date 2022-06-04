import 'package:freezed_annotation/freezed_annotation.dart';

part 'rendered_object.freezed.dart';
part 'rendered_object.g.dart';

@freezed
class RenderedObject with _$RenderedObject {
  factory RenderedObject(

      /// Content as it exists in the database.
      ///
      String? raw,

      /// Content transformed for display.
      ///
      String? rendered) = _RenderedObject;

  factory RenderedObject.fromJson(Map<String, Object?> json) =>
      _$RenderedObjectFromJson(json);
}
