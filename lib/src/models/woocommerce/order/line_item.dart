import 'dart:convert';

class LineItem {
  final int? id;
  final String? subtotal;
  final String? subtotalTax;
  final String? total;
  final String? totalTax;
  final String? price;
  final int? quantity;
  final String? taxClass;
  final String? name;
  final int? productId;
  final String? sku;
  final List<dynamic>? meta;
  LineItem({
    this.id,
    this.subtotal,
    this.subtotalTax,
    this.total,
    this.totalTax,
    this.price,
    this.quantity,
    this.taxClass,
    this.name,
    this.productId,
    this.sku,
    this.meta,
  });

  LineItem copyWith({
    int? id,
    String? subtotal,
    String? subtotalTax,
    String? total,
    String? totalTax,
    String? price,
    int? quantity,
    String? taxClass,
    String? name,
    int? productId,
    String? sku,
    List<dynamic>? meta,
  }) {
    return LineItem(
      id: id ?? this.id,
      subtotal: subtotal ?? this.subtotal,
      subtotalTax: subtotalTax ?? this.subtotalTax,
      total: total ?? this.total,
      totalTax: totalTax ?? this.totalTax,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      taxClass: taxClass ?? this.taxClass,
      name: name ?? this.name,
      productId: productId ?? this.productId,
      sku: sku ?? this.sku,
      meta: meta ?? this.meta,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'subtotal': subtotal,
      'subtotal_tax': subtotalTax,
      'total': total,
      'total_tax': totalTax,
      'price': price,
      'quantity': quantity,
      'tax_class': taxClass,
      'name': name,
      'product_id': productId,
      'sku': sku,
      'meta': meta,
    };
  }

  factory LineItem.fromMap(Map<String, dynamic> map) {
    return LineItem(
      id: map['id']?.toInt(),
      subtotal: map['subtotal'],
      subtotalTax: map['subtotal_tax'],
      total: map['total'],
      totalTax: map['total_tax'],
      price: map['price'],
      quantity: map['quantity']?.toInt(),
      taxClass: map['tax_class'],
      name: map['name'],
      productId: map['product_id']?.toInt(),
      sku: map['sku'],
      meta: List<dynamic>.from(map['meta'] ?? []),
    );
  }

  String toJson() => json.encode(toMap());

  factory LineItem.fromJson(String source) =>
      LineItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LineItem(id: $id, subtotal: $subtotal, subtotalTax: $subtotalTax, total: $total, totalTax: $totalTax, price: $price, quantity: $quantity, taxClass: $taxClass, name: $name, productId: $productId, sku: $sku, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LineItem &&
        other.id == id &&
        other.subtotal == subtotal &&
        other.subtotalTax == subtotalTax &&
        other.total == total &&
        other.totalTax == totalTax &&
        other.price == price &&
        other.quantity == quantity &&
        other.taxClass == taxClass &&
        other.name == name &&
        other.productId == productId &&
        other.sku == sku &&
        other.meta == meta;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        subtotal.hashCode ^
        subtotalTax.hashCode ^
        total.hashCode ^
        totalTax.hashCode ^
        price.hashCode ^
        quantity.hashCode ^
        taxClass.hashCode ^
        name.hashCode ^
        productId.hashCode ^
        sku.hashCode ^
        meta.hashCode;
  }
}
