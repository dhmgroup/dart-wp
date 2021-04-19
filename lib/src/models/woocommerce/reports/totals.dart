import 'dart:convert';

class Totals {
  final String? sales;
  final int? orders;
  final int? items;
  final String? tax;
  final String? shipping;
  final String? discount;
  final int? customers;
  Totals({
    this.sales,
    this.orders,
    this.items,
    this.tax,
    this.shipping,
    this.discount,
    this.customers,
  });

  Totals copyWith({
    String? sales,
    int? orders,
    int? items,
    String? tax,
    String? shipping,
    String? discount,
    int? customers,
  }) {
    return Totals(
      sales: sales ?? this.sales,
      orders: orders ?? this.orders,
      items: items ?? this.items,
      tax: tax ?? this.tax,
      shipping: shipping ?? this.shipping,
      discount: discount ?? this.discount,
      customers: customers ?? this.customers,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sales': sales,
      'orders': orders,
      'items': items,
      'tax': tax,
      'shipping': shipping,
      'discount': discount,
      'customers': customers,
    };
  }

  factory Totals.fromMap(Map<String, dynamic> map) {
    return Totals(
      sales: map['sales'],
      orders: map['orders']?.toInt(),
      items: map['items']?.toInt(),
      tax: map['tax'],
      shipping: map['shipping'],
      discount: map['discount'],
      customers: map['customers']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Totals.fromJson(String source) => Totals.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Totals(sales: $sales, orders: $orders, items: $items, tax: $tax, shipping: $shipping, discount: $discount, customers: $customers)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Totals &&
        o.sales == sales &&
        o.orders == orders &&
        o.items == items &&
        o.tax == tax &&
        o.shipping == shipping &&
        o.discount == discount &&
        o.customers == customers;
  }

  @override
  int get hashCode {
    return sales.hashCode ^
        orders.hashCode ^
        items.hashCode ^
        tax.hashCode ^
        shipping.hashCode ^
        discount.hashCode ^
        customers.hashCode;
  }
}
