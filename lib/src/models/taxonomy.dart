import 'dart:convert';

import 'package:collection/collection.dart';

class Taxonomy {
  ///All capabilities used by the taxonomy.
  final Map<String, dynamic>? capabilities;

  ///A human-readable description of the taxonomy.
  final String? description;

  ///Whether or not the taxonomy should have children.
  final bool? hierarchical;

  ///Human-readable labels for the taxonomy for various contexts.
  final Map<String, dynamic>? labels;

  ///The title for the taxonomy.
  final String? name;

  ///An alphanumeric identifier for the taxonomy.
  final String? slug;

  ///Whether or not the term cloud should be displayed.
  final bool? showCloud;

  ///Types associated with the taxonomy.
  final List? types;

  ///REST base route for the taxonomy.
  final String? restBase;

  ///The visibility settings for the taxonomy.
  final Map<String, dynamic>? visibility;
  Taxonomy({
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

  Taxonomy copyWith({
    Map<String, dynamic>? capabilities,
    String? description,
    bool? hierarchical,
    Map<String, dynamic>? labels,
    String? name,
    String? slug,
    bool? showCloud,
    List? types,
    String? restBase,
    Map<String, dynamic>? visibility,
  }) {
    return Taxonomy(
      capabilities: capabilities ?? this.capabilities,
      description: description ?? this.description,
      hierarchical: hierarchical ?? this.hierarchical,
      labels: labels ?? this.labels,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      showCloud: showCloud ?? this.showCloud,
      types: types ?? this.types,
      restBase: restBase ?? this.restBase,
      visibility: visibility ?? this.visibility,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'capabilities': capabilities,
      'description': description,
      'hierarchical': hierarchical,
      'labels': labels,
      'name': name,
      'slug': slug,
      'show_cloud': showCloud,
      'types': types,
      'rest_base': restBase,
      'visibility': visibility,
    };
  }

  factory Taxonomy.fromMap(Map<String, dynamic> map) {
    return Taxonomy(
      capabilities: Map<String, dynamic>.from(map['capabilities']),
      description: map['description'],
      hierarchical: map['hierarchical'],
      labels: Map<String, dynamic>.from(map['labels']),
      name: map['name'],
      slug: map['slug'],
      showCloud: map['show_cloud'],
      types: List.from(map['types']),
      restBase: map['rest_base'],
      visibility: Map<String, dynamic>.from(map['visibility']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Taxonomy.fromJson(String source) =>
      Taxonomy.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Taxonomy(capabilities: $capabilities, description: $description, hierarchical: $hierarchical, labels: $labels, name: $name, slug: $slug, showCloud: $showCloud, types: $types, restBase: $restBase, visibility: $visibility)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final collectionEquals = const DeepCollectionEquality().equals;

    return o is Taxonomy &&
        collectionEquals(o.capabilities, capabilities) &&
        o.description == description &&
        o.hierarchical == hierarchical &&
        collectionEquals(o.labels, labels) &&
        o.name == name &&
        o.slug == slug &&
        o.showCloud == showCloud &&
        collectionEquals(o.types, types) &&
        o.restBase == restBase &&
        collectionEquals(o.visibility, visibility);
  }

  @override
  int get hashCode {
    return capabilities.hashCode ^
        description.hashCode ^
        hierarchical.hashCode ^
        labels.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        showCloud.hashCode ^
        types.hashCode ^
        restBase.hashCode ^
        visibility.hashCode;
  }
}

List<Taxonomy>? parseTaxonomies(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<Taxonomy>((json) => Taxonomy.fromMap(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<Taxonomy>((json) => Taxonomy.fromMap(json))
        .toList();
  }
}
