import 'dart:convert';

class ProductTag {
  final int id;
  final String name;
  final String slug;
  final String description;
  final int count;
  ProductTag({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.count,
  });

  ProductTag copyWith({
    int id,
    String name,
    String slug,
    String description,
    int count,
  }) {
    return ProductTag(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      description: description ?? this.description,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'description': description,
      'count': count,
    };
  }

  factory ProductTag.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ProductTag(
      id: map['id'],
      name: map['name'],
      slug: map['slug'],
      description: map['description'],
      count: map['count'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductTag.fromJson(String source) =>
      ProductTag.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductTag(id: $id, name: $name, slug: $slug, description: $description, count: $count)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ProductTag &&
        o.id == id &&
        o.name == name &&
        o.slug == slug &&
        o.description == description &&
        o.count == count;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        description.hashCode ^
        count.hashCode;
  }
}
