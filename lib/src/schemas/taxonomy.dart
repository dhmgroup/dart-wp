import 'package:freezed_annotation/freezed_annotation.dart';

part 'taxonomy.freezed.dart';
part 'taxonomy.g.dart';

@freezed
abstract class TaxonomySchema with _$TaxonomySchema {
  factory TaxonomySchema({
    ///All capabilities used by the taxonomy.
    Map<String, dynamic> capabilities,

    ///A human-readable description of the taxonomy.
    String description,

    ///Whether or not the taxonomy should have children.
    bool hierarchical,

    ///Human-readable labels for the taxonomy for various contexts.
    Map<String, dynamic> labels,

    ///The title for the taxonomy.
    String name,

    ///An alphanumeric identifier for the taxonomy.
    String slug,

    ///Whether or not the term cloud should be displayed.
    bool showCloud,

    ///Types associated with the taxonomy.
    List types,

    ///REST base route for the taxonomy.
    String restBase,

    ///The visibility settings for the taxonomy.
    Map<String, dynamic> visibility,
  }) = _TaxonomySchema;

  factory TaxonomySchema.fromJson(Map<String, dynamic> json) =>
      _$TaxonomySchemaFromJson(json);
}
