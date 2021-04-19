import 'dart:convert';

class WooMeta {
  final int? id;
  final String? key;
  final String? value;
  WooMeta({
    this.id,
    this.key,
    this.value,
  });

  WooMeta copyWith({
    int? id,
    String? key,
    String? value,
  }) {
    return WooMeta(
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

  factory WooMeta.fromMap(Map<String, dynamic> map) {
    return WooMeta(
      id: map['id']?.toInt(),
      key: map['key'],
      value: map['value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory WooMeta.fromJson(String source) =>
      WooMeta.fromMap(json.decode(source));

  @override
  String toString() => 'WooMeta(id: $id, key: $key, value: $value)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WooMeta && o.id == id && o.key == key && o.value == value;
  }

  @override
  int get hashCode => id.hashCode ^ key.hashCode ^ value.hashCode;
}
