import 'dart:convert';

class ProductMeta {
  final int id;
  final String key;
  final String value;
  ProductMeta({
    this.id,
    this.key,
    this.value,
  });

  ProductMeta copyWith({
    int id,
    String key,
    String value,
  }) {
    return ProductMeta(
      id: id ?? this.id,
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'key': key,
      'value': value,
    };
  }

  factory ProductMeta.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ProductMeta(
      id: map['id'],
      key: map['key'],
      value: map['value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductMeta.fromJson(String source) =>
      ProductMeta.fromMap(json.decode(source));

  @override
  String toString() => 'ProductMeta(id: $id, key: $key, value: $value)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ProductMeta && o.id == id && o.key == key && o.value == value;
  }

  @override
  int get hashCode => id.hashCode ^ key.hashCode ^ value.hashCode;
}
