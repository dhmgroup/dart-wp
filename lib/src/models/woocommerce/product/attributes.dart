import 'dart:convert';

import 'package:collection/collection.dart';

class ProductAttributes {
  final String? name;
  final String? slug;
  final int? position;
  final bool? visible;
  final bool? variation;
  final List? options;
  ProductAttributes({
    this.name,
    this.slug,
    this.position,
    this.visible,
    this.variation,
    this.options,
  });

  ProductAttributes copyWith({
    String? name,
    String? slug,
    int? position,
    bool? visible,
    bool? variation,
    List? options,
  }) {
    return ProductAttributes(
      name: name ?? this.name,
      slug: slug ?? this.slug,
      position: position ?? this.position,
      visible: visible ?? this.visible,
      variation: variation ?? this.variation,
      options: options ?? this.options,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'slug': slug,
      'position': position,
      'visible': visible,
      'variation': variation,
      'options': options,
    };
  }

  factory ProductAttributes.fromMap(Map<String, dynamic> map) {
    return ProductAttributes(
      name: map['name'],
      slug: map['slug'],
      position: map['position'],
      visible: map['visible'],
      variation: map['variation'],
      options: List.from(map['options']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductAttributes.fromJson(String source) =>
      ProductAttributes.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductAttributes(name: $name, slug: $slug, position: $position, visible: $visible, variation: $variation, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is ProductAttributes &&
        other.name == name &&
        other.slug == slug &&
        other.position == position &&
        other.visible == visible &&
        other.variation == variation &&
        listEquals(other.options, options);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        slug.hashCode ^
        position.hashCode ^
        visible.hashCode ^
        variation.hashCode ^
        options.hashCode;
  }
}
