import 'dart:convert';

class CouponLine {
  final int? id;
  final String? code;
  final String? amount;
  CouponLine({
    this.id,
    this.code,
    this.amount,
  });

  CouponLine copyWith({
    int? id,
    String? code,
    String? amount,
  }) {
    return CouponLine(
      id: id ?? this.id,
      code: code ?? this.code,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'code': code,
      'amount': amount,
    };
  }

  factory CouponLine.fromMap(Map<String, dynamic> map) {
    return CouponLine(
      id: map['id'],
      code: map['code'],
      amount: map['amount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CouponLine.fromJson(String source) =>
      CouponLine.fromMap(json.decode(source));

  @override
  String toString() => 'CouponLine(id: $id, code: $code, amount: $amount)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CouponLine &&
        other.id == id &&
        other.code == code &&
        other.amount == amount;
  }

  @override
  int get hashCode => id.hashCode ^ code.hashCode ^ amount.hashCode;
}
