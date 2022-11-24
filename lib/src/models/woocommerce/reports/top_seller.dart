import 'dart:convert';

class TopSeller {
  final String? title;
  final int? productId;
  final int? quantity;
  TopSeller({
    this.title,
    this.productId,
    this.quantity,
  });

  TopSeller copyWith({
    String? title,
    int? productId,
    int? quantity,
  }) {
    return TopSeller(
      title: title ?? this.title,
      productId: productId ?? this.productId,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'productId': productId,
      'quantity': quantity,
    };
  }

  factory TopSeller.fromMap(Map<String, dynamic> map) {
    return TopSeller(
      title: map['title'],
      productId: map['productId'],
      quantity: map['quantity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TopSeller.fromJson(String source) =>
      TopSeller.fromMap(json.decode(source));

  @override
  String toString() =>
      'TopSeller(title: $title, productId: $productId, quantity: $quantity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TopSeller &&
        other.title == title &&
        other.productId == productId &&
        other.quantity == quantity;
  }

  @override
  int get hashCode => title.hashCode ^ productId.hashCode ^ quantity.hashCode;
}
