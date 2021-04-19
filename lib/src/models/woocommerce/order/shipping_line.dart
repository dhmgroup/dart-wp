import 'dart:convert';

class ShippingLine {
  final int? id;
  final String? methodId;
  final String? methodTitle;
  final String? total;
  ShippingLine({
    this.id,
    this.methodId,
    this.methodTitle,
    this.total,
  });

  ShippingLine copyWith({
    int? id,
    String? methodId,
    String? methodTitle,
    String? total,
  }) {
    return ShippingLine(
      id: id ?? this.id,
      methodId: methodId ?? this.methodId,
      methodTitle: methodTitle ?? this.methodTitle,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'method_id': methodId,
      'method_title': methodTitle,
      'total': total,
    };
  }

  factory ShippingLine.fromMap(Map<String, dynamic> map) {
    return ShippingLine(
      id: map['id']?.toInt(),
      methodId: map['method_id'],
      methodTitle: map['method_title'],
      total: map['total'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ShippingLine.fromJson(String source) =>
      ShippingLine.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ShippingLine(id: $id, methodId: $methodId, methodTitle: $methodTitle, total: $total)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ShippingLine &&
        o.id == id &&
        o.methodId == methodId &&
        o.methodTitle == methodTitle &&
        o.total == total;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        methodId.hashCode ^
        methodTitle.hashCode ^
        total.hashCode;
  }
}
