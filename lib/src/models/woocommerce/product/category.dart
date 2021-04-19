import 'dart:convert';

import 'package:wordpress_api/src/models/woocommerce/product/product.dart'
    show ProductImage;

class ProductCategory {
  final int? id;
  final String? name;
  final String? slug;
  final int? parent;
  final String? description;

  ///[String] Category archive display type.
  ///
  ///Options: `default`, `products`, `subcategories` and `both`.
  ///
  ///Default is default.
  final String? display;
  final ProductImage? image;
  final int? menuOrder;
  final int? count;
  ProductCategory({
    this.id,
    this.name,
    this.slug,
    this.parent,
    this.description,
    this.display,
    this.image,
    this.menuOrder,
    this.count,
  });

  ProductCategory copyWith({
    int? id,
    String? name,
    String? slug,
    int? parent,
    String? description,
    String? display,
    ProductImage? image,
    int? menuOrder,
    int? count,
  }) {
    return ProductCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      parent: parent ?? this.parent,
      description: description ?? this.description,
      display: display ?? this.display,
      image: image ?? this.image,
      menuOrder: menuOrder ?? this.menuOrder,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'parent': parent,
      'description': description,
      'display': display,
      'image': image?.toMap(),
      'menu_order': menuOrder,
      'count': count,
    };
  }

  factory ProductCategory.fromMap(Map<String, dynamic> map) {
    return ProductCategory(
      id: map['id']?.toInt(),
      name: map['name'],
      slug: map['slug'],
      parent: map['parent']?.toInt(),
      description: map['description'],
      display: map['display'],
      image: ProductImage.fromMap(map['image']),
      menuOrder: map['menu_order']?.toInt(),
      count: map['count']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductCategory.fromJson(String source) =>
      ProductCategory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductCategory(id: $id, name: $name, slug: $slug, parent: $parent, description: $description, display: $display, image: $image, menuOrder: $menuOrder, count: $count)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ProductCategory &&
        o.id == id &&
        o.name == name &&
        o.slug == slug &&
        o.parent == parent &&
        o.description == description &&
        o.display == display &&
        o.image == image &&
        o.menuOrder == menuOrder &&
        o.count == count;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        parent.hashCode ^
        description.hashCode ^
        display.hashCode ^
        image.hashCode ^
        menuOrder.hashCode ^
        count.hashCode;
  }
}
