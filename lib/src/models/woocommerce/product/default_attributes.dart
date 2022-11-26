import 'dart:convert';

class ProductDefaultAttributes {
  final int? id;
  final String? name;
  final String? option;
  ProductDefaultAttributes({
    this.id,
    this.name,
    this.option,
  });

  ProductDefaultAttributes copyWith({
    int? id,
    String? name,
    String? option,
  }) {
    return ProductDefaultAttributes(
      id: id ?? this.id,
      name: name ?? this.name,
      option: option ?? this.option,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'option': option,
    };
  }

  factory ProductDefaultAttributes.fromMap(Map<String, dynamic> map) {
    return ProductDefaultAttributes(
      id: map['id'],
      name: map['name'],
      option: map['option'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDefaultAttributes.fromJson(String source) =>
      ProductDefaultAttributes.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProductDefaultAttributes(id: $id, name: $name, option: $option)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductDefaultAttributes &&
        other.id == id &&
        other.name == name &&
        other.option == option;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ option.hashCode;
}
