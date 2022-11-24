import 'dart:convert';

class TaxRate {
  final int? id;
  final String? country;
  final String? state;
  final String? postcode;
  final String? city;
  final String? rate;
  final String? name;

  ///[int] Tax priority. Only 1 matching rate per priority will be used.
  ///
  ///To define multiple tax rates for a single area you need to specify a different priority per rate.
  ///
  ///Default is `1`.
  final int? priority;

  ///[bool] Whether or not this is a compound rate. Compound tax rates are applied on top of other tax rates.
  ///
  ///Default is `false`.
  final bool? compound;

  ///[bool] Whether or not this tax rate also gets applied to shipping.
  ///
  ///Default is `true`.
  final bool? shipping;
  final int? order;

  ///[String] Tax class.
  ///
  ///Default is `standard`.
  final String? taxClass;
  TaxRate({
    this.id,
    this.country,
    this.state,
    this.postcode,
    this.city,
    this.rate,
    this.name,
    this.priority,
    this.compound,
    this.shipping,
    this.order,
    this.taxClass,
  });

  TaxRate copyWith({
    int? id,
    String? country,
    String? state,
    String? postcode,
    String? city,
    String? rate,
    String? name,
    int? priority,
    bool? compound,
    bool? shipping,
    int? order,
    String? taxClass,
  }) {
    return TaxRate(
      id: id ?? this.id,
      country: country ?? this.country,
      state: state ?? this.state,
      postcode: postcode ?? this.postcode,
      city: city ?? this.city,
      rate: rate ?? this.rate,
      name: name ?? this.name,
      priority: priority ?? this.priority,
      compound: compound ?? this.compound,
      shipping: shipping ?? this.shipping,
      order: order ?? this.order,
      taxClass: taxClass ?? this.taxClass,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'country': country,
      'state': state,
      'postcode': postcode,
      'city': city,
      'rate': rate,
      'name': name,
      'priority': priority,
      'compound': compound,
      'shipping': shipping,
      'order': order,
      'class': taxClass,
    };
  }

  factory TaxRate.fromMap(Map<String, dynamic> map) {
    return TaxRate(
      id: map['id']?.toInt(),
      country: map['country'],
      state: map['state'],
      postcode: map['postcode'],
      city: map['city'],
      rate: map['rate'],
      name: map['name'],
      priority: map['priority']?.toInt(),
      compound: map['compound'],
      shipping: map['shipping'],
      order: map['order']?.toInt(),
      taxClass: map['class'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TaxRate.fromJson(String source) =>
      TaxRate.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TaxRate(id: $id, country: $country, state: $state, postcode: $postcode, city: $city, rate: $rate, name: $name, priority: $priority, compound: $compound, shipping: $shipping, order: $order, taxClass: $taxClass)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TaxRate &&
        other.id == id &&
        other.country == country &&
        other.state == state &&
        other.postcode == postcode &&
        other.city == city &&
        other.rate == rate &&
        other.name == name &&
        other.priority == priority &&
        other.compound == compound &&
        other.shipping == shipping &&
        other.order == order &&
        other.taxClass == taxClass;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        country.hashCode ^
        state.hashCode ^
        postcode.hashCode ^
        city.hashCode ^
        rate.hashCode ^
        name.hashCode ^
        priority.hashCode ^
        compound.hashCode ^
        shipping.hashCode ^
        order.hashCode ^
        taxClass.hashCode;
  }
}
