import 'dart:convert';

class Category {
  ///Unique identifier for the term.
  final int? id;

  ///Number of published posts for the term.
  final int? count;

  ///HTML description of the term.
  final String? description;

  ///URL of the term.
  final String? link;

  ///HTML title for the term.
  final String? name;

  ///An alphanumeric identifier for the term unique to its type.
  final String? slug;

  ///Type attribution for the term.
  ///
  ///One of: "category", "post_tag", "nav_menu", "linkCategory", "postFormat"
  final String? taxonomy;

  ///The parent term ID.
  final int? parent;

  ///Meta fields.
  final dynamic meta;
  Category({
    this.id,
    this.count,
    this.description,
    this.link,
    this.name,
    this.slug,
    this.taxonomy,
    this.parent,
    this.meta,
  });

  Category copyWith({
    int? id,
    int? count,
    String? description,
    String? link,
    String? name,
    String? slug,
    String? taxonomy,
    int? parent,
    dynamic meta,
  }) {
    return Category(
      id: id ?? this.id,
      count: count ?? this.count,
      description: description ?? this.description,
      link: link ?? this.link,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      taxonomy: taxonomy ?? this.taxonomy,
      parent: parent ?? this.parent,
      meta: meta ?? this.meta,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'count': count,
      'description': description,
      'link': link,
      'name': name,
      'slug': slug,
      'taxonomy': taxonomy,
      'parent': parent,
      'meta': meta,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'],
      count: map['count'],
      description: map['description'],
      link: map['link'],
      name: map['name'],
      slug: map['slug'],
      taxonomy: map['taxonomy'],
      parent: map['parent'],
      meta: map['meta'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Category(id: $id, count: $count, description: $description, link: $link, name: $name, slug: $slug, taxonomy: $taxonomy, parent: $parent, meta: $meta)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Category &&
        o.id == id &&
        o.count == count &&
        o.description == description &&
        o.link == link &&
        o.name == name &&
        o.slug == slug &&
        o.taxonomy == taxonomy &&
        o.parent == parent &&
        o.meta == meta;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        count.hashCode ^
        description.hashCode ^
        link.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        taxonomy.hashCode ^
        parent.hashCode ^
        meta.hashCode;
  }
}

List<Category>? parseCategories(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<Category>((json) => Category.fromMap(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<Category>((json) => Category.fromMap(json))
        .toList();
  }
}
