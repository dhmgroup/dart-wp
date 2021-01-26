import 'dart:convert';

class TaxLine {
  final int id;
  final String rateId;
  final String code;
  final String title;
  final String total;
  final bool compound;
  TaxLine({
    this.id,
    this.rateId,
    this.code,
    this.title,
    this.total,
    this.compound,
  });

  TaxLine copyWith({
    int id,
    String rateId,
    String code,
    String title,
    String total,
    bool compound,
  }) {
    return TaxLine(
      id: id ?? this.id,
      rateId: rateId ?? this.rateId,
      code: code ?? this.code,
      title: title ?? this.title,
      total: total ?? this.total,
      compound: compound ?? this.compound,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'rate_id': rateId,
      'code': code,
      'title': title,
      'total': total,
      'compound': compound,
    };
  }

  factory TaxLine.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return TaxLine(
      id: map['id']?.toInt(),
      rateId: map['rate_id'],
      code: map['code'],
      title: map['title'],
      total: map['total'],
      compound: map['compound'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TaxLine.fromJson(String source) =>
      TaxLine.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TaxLine(id: $id, rateId: $rateId, code: $code, title: $title, total: $total, compound: $compound)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is TaxLine &&
        o.id == id &&
        o.rateId == rateId &&
        o.code == code &&
        o.title == title &&
        o.total == total &&
        o.compound == compound;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        rateId.hashCode ^
        code.hashCode ^
        title.hashCode ^
        total.hashCode ^
        compound.hashCode;
  }
}
