import 'dart:convert';

class PaymentDetail {
  final String? methodId;
  final String? methodTitle;
  final bool? paid;
  PaymentDetail({
    this.methodId,
    this.methodTitle,
    this.paid,
  });

  PaymentDetail copyWith({
    String? methodId,
    String? methodTitle,
    bool? paid,
  }) {
    return PaymentDetail(
      methodId: methodId ?? this.methodId,
      methodTitle: methodTitle ?? this.methodTitle,
      paid: paid ?? this.paid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'method_id': methodId,
      'method_title': methodTitle,
      'paid': paid,
    };
  }

  factory PaymentDetail.fromMap(Map<String, dynamic> map) {
    return PaymentDetail(
      methodId: map['method_id'],
      methodTitle: map['method_title'],
      paid: map['paid'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentDetail.fromJson(String source) =>
      PaymentDetail.fromMap(json.decode(source));

  @override
  String toString() =>
      'PaymentDetail(methodId: $methodId, methodTitle: $methodTitle, paid: $paid)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is PaymentDetail &&
        o.methodId == methodId &&
        o.methodTitle == methodTitle &&
        o.paid == paid;
  }

  @override
  int get hashCode => methodId.hashCode ^ methodTitle.hashCode ^ paid.hashCode;
}
