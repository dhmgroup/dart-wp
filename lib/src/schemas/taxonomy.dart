import 'package:json_annotation/json_annotation.dart';

part 'taxonomy.g.dart';

/// WordPress Taxonomies Endpoint Model /wp/v2/taxonomies
@JsonSerializable()
class TaxonomySchema {
  ///All capabilities used by the taxonomy.
  final Map<String, dynamic> capabilities;

  ///A human-readable description of the taxonomy.
  final String description;

  ///Whether or not the taxonomy should have children.
  final bool hierarchical;

  ///Human-readable labels for the taxonomy for various contexts.
  final Map<String, dynamic> labels;

  ///The title for the taxonomy.
  final String name;

  ///An alphanumeric identifier for the taxonomy.
  final String slug;

  ///Whether or not the term cloud should be displayed.
  final bool showCloud;

  ///Types associated with the taxonomy.
  final List types;

  ///REST base route for the taxonomy.
  final String restBase;

  ///The visibility settings for the taxonomy.
  final Map<String, dynamic> visibility;

  TaxonomySchema({
    this.capabilities,
    this.description,
    this.hierarchical,
    this.labels,
    this.name,
    this.slug,
    this.showCloud,
    this.types,
    this.restBase,
    this.visibility,
  });

  /// Generate Taxonomy from JSON
  factory TaxonomySchema.fromJson(Map<String, dynamic> data) =>
      _$TaxonomySchemaFromJson(data);

  /// Convert Taxonomy to JSON
  Map<String, dynamic> toJson() => _$TaxonomySchemaToJson(this);
}
