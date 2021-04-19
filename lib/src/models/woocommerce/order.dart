import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:wordpress_api/src/models/woocommerce/billing.dart';
import 'package:wordpress_api/src/models/woocommerce/order/coupon_line.dart';
import 'package:wordpress_api/src/models/woocommerce/customer.dart';
import 'package:wordpress_api/src/models/woocommerce/order/fee_line.dart';
import 'package:wordpress_api/src/models/woocommerce/order/line_item.dart';
import 'package:wordpress_api/src/models/woocommerce/shipping.dart';

import 'order/order.dart';

class Order {
  final int? id;
  final int? orderNumber;
  final String? createdAt;
  final String? updatedAt;
  final String? completedAt;
  final String? status;
  final String? currency;
  final String? total;
  final String? subtotal;
  final int? totalLineItemsQuantity;
  final String? totalTax;
  final String? totalShipping;
  final String? cartTax;
  final String? shippingTax;
  final String? totalDiscount;
  final String? shippingMethods;
  final PaymentDetail? paymentDetails;
  final Billing? billingAddress;
  final Shipping? shippingAddress;
  final String? note;
  final String? customerIp;
  final String? customerUserAgent;
  final int? customerId;
  final String? viewOrderUrl;
  final List<LineItem>? lineItems;
  final List<ShippingLine>? shippingLines;
  final List<TaxLine>? taxLines;
  final List<FeeLine>? feeLines;
  final List<CouponLine>? couponLines;
  final Customer? customer;
  Order({
    this.id,
    this.orderNumber,
    this.createdAt,
    this.updatedAt,
    this.completedAt,
    this.status,
    this.currency,
    this.total,
    this.subtotal,
    this.totalLineItemsQuantity,
    this.totalTax,
    this.totalShipping,
    this.cartTax,
    this.shippingTax,
    this.totalDiscount,
    this.shippingMethods,
    this.paymentDetails,
    this.billingAddress,
    this.shippingAddress,
    this.note,
    this.customerIp,
    this.customerUserAgent,
    this.customerId,
    this.viewOrderUrl,
    this.lineItems,
    this.shippingLines,
    this.taxLines,
    this.feeLines,
    this.couponLines,
    this.customer,
  });

  Order copyWith({
    int? id,
    int? orderNumber,
    String? createdAt,
    String? updatedAt,
    String? completedAt,
    String? status,
    String? currency,
    String? total,
    String? subtotal,
    int? totalLineItemsQuantity,
    String? totalTax,
    String? totalShipping,
    String? cartTax,
    String? shippingTax,
    String? totalDiscount,
    String? shippingMethods,
    PaymentDetail? paymentDetails,
    Billing? billingAddress,
    Shipping? shippingAddress,
    String? note,
    String? customerIp,
    String? customerUserAgent,
    int? customerId,
    String? viewOrderUrl,
    List<LineItem>? lineItems,
    List<ShippingLine>? shippingLines,
    List<TaxLine>? taxLines,
    List<FeeLine>? feeLines,
    List<CouponLine>? couponLines,
    Customer? customer,
  }) {
    return Order(
      id: id ?? this.id,
      orderNumber: orderNumber ?? this.orderNumber,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      completedAt: completedAt ?? this.completedAt,
      status: status ?? this.status,
      currency: currency ?? this.currency,
      total: total ?? this.total,
      subtotal: subtotal ?? this.subtotal,
      totalLineItemsQuantity:
          totalLineItemsQuantity ?? this.totalLineItemsQuantity,
      totalTax: totalTax ?? this.totalTax,
      totalShipping: totalShipping ?? this.totalShipping,
      cartTax: cartTax ?? this.cartTax,
      shippingTax: shippingTax ?? this.shippingTax,
      totalDiscount: totalDiscount ?? this.totalDiscount,
      shippingMethods: shippingMethods ?? this.shippingMethods,
      paymentDetails: paymentDetails ?? this.paymentDetails,
      billingAddress: billingAddress ?? this.billingAddress,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      note: note ?? this.note,
      customerIp: customerIp ?? this.customerIp,
      customerUserAgent: customerUserAgent ?? this.customerUserAgent,
      customerId: customerId ?? this.customerId,
      viewOrderUrl: viewOrderUrl ?? this.viewOrderUrl,
      lineItems: lineItems ?? this.lineItems,
      shippingLines: shippingLines ?? this.shippingLines,
      taxLines: taxLines ?? this.taxLines,
      feeLines: feeLines ?? this.feeLines,
      couponLines: couponLines ?? this.couponLines,
      customer: customer ?? this.customer,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'order_number': orderNumber,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'completed_at': completedAt,
      'status': status,
      'currency': currency,
      'total': total,
      'subtotal': subtotal,
      'total_line_items_quantity': totalLineItemsQuantity,
      'total_tax': totalTax,
      'total_shipping': totalShipping,
      'cart_tax': cartTax,
      'shipping_tax': shippingTax,
      'total_discount': totalDiscount,
      'shipping_methods': shippingMethods,
      'payment_details': paymentDetails?.toMap(),
      'billing_address': billingAddress?.toMap(),
      'shipping_address': shippingAddress?.toMap(),
      'note': note,
      'customer_ip': customerIp,
      'customer_user_agent': customerUserAgent,
      'customer_id': customerId,
      'view_order_url': viewOrderUrl,
      'line_items': lineItems?.map((x) => x.toMap()).toList(),
      'shipping_lines': shippingLines?.map((x) => x.toMap()).toList(),
      'tax_lines': taxLines?.map((x) => x.toMap()).toList(),
      'fee_lines': feeLines,
      'coupon_lines': couponLines,
      'customer': customer?.toMap(),
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id']?.toInt(),
      orderNumber: map['order_number']?.toInt(),
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
      completedAt: map['completed_at'],
      status: map['status'],
      currency: map['currency'],
      total: map['total'],
      subtotal: map['subtotal'],
      totalLineItemsQuantity: map['total_line_items_quantity']?.toInt(),
      totalTax: map['total_tax'],
      totalShipping: map['total_shipping'],
      cartTax: map['cart_tax'],
      shippingTax: map['shipping_tax'],
      totalDiscount: map['total_discount'],
      shippingMethods: map['shipping_methods'],
      paymentDetails: PaymentDetail.fromMap(map['payment_details']),
      billingAddress: Billing.fromMap(map['billing_address']),
      shippingAddress: Shipping.fromMap(map['shipping_address']),
      note: map['note'],
      customerIp: map['customer_ip'],
      customerUserAgent: map['customer_user_agent'],
      customerId: map['customer_id']?.toInt(),
      viewOrderUrl: map['view_order_url'],
      lineItems: List<LineItem>.from(
          map['line_items']?.map((x) => LineItem.fromMap(x))),
      shippingLines: List<ShippingLine>.from(
          map['shipping_lines']?.map((x) => ShippingLine.fromMap(x))),
      taxLines:
          List<TaxLine>.from(map['tax_lines']?.map((x) => TaxLine.fromMap(x))),
      feeLines: List<dynamic>.from(map['fee_lines']) as List<FeeLine>?,
      couponLines: List<dynamic>.from(map['coupon_lines']) as List<CouponLine>?,
      customer: Customer.fromMap(map['customer']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Order(id: $id, orderNumber: $orderNumber, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt, status: $status, currency: $currency, total: $total, subtotal: $subtotal, totalLineItemsQuantity: $totalLineItemsQuantity, totalTax: $totalTax, totalShipping: $totalShipping, cartTax: $cartTax, shippingTax: $shippingTax, totalDiscount: $totalDiscount, shippingMethods: $shippingMethods, paymentDetails: $paymentDetails, billingAddress: $billingAddress, shippingAddress: $shippingAddress, note: $note, customerIp: $customerIp, customerUserAgent: $customerUserAgent, customerId: $customerId, viewOrderUrl: $viewOrderUrl, lineItems: $lineItems, shippingLines: $shippingLines, taxLines: $taxLines, feeLines: $feeLines, couponLines: $couponLines, customer: $customer)';
  }

  @override
  int get hashCode {
    return id.hashCode ^
        orderNumber.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        completedAt.hashCode ^
        status.hashCode ^
        currency.hashCode ^
        total.hashCode ^
        subtotal.hashCode ^
        totalLineItemsQuantity.hashCode ^
        totalTax.hashCode ^
        totalShipping.hashCode ^
        cartTax.hashCode ^
        shippingTax.hashCode ^
        totalDiscount.hashCode ^
        shippingMethods.hashCode ^
        paymentDetails.hashCode ^
        billingAddress.hashCode ^
        shippingAddress.hashCode ^
        note.hashCode ^
        customerIp.hashCode ^
        customerUserAgent.hashCode ^
        customerId.hashCode ^
        viewOrderUrl.hashCode ^
        lineItems.hashCode ^
        shippingLines.hashCode ^
        taxLines.hashCode ^
        feeLines.hashCode ^
        couponLines.hashCode ^
        customer.hashCode;
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return o is Order &&
        o.id == id &&
        o.orderNumber == orderNumber &&
        o.createdAt == createdAt &&
        o.updatedAt == updatedAt &&
        o.completedAt == completedAt &&
        o.status == status &&
        o.currency == currency &&
        o.total == total &&
        o.subtotal == subtotal &&
        o.totalLineItemsQuantity == totalLineItemsQuantity &&
        o.totalTax == totalTax &&
        o.totalShipping == totalShipping &&
        o.cartTax == cartTax &&
        o.shippingTax == shippingTax &&
        o.totalDiscount == totalDiscount &&
        o.shippingMethods == shippingMethods &&
        o.paymentDetails == paymentDetails &&
        o.billingAddress == billingAddress &&
        o.shippingAddress == shippingAddress &&
        o.note == note &&
        o.customerIp == customerIp &&
        o.customerUserAgent == customerUserAgent &&
        o.customerId == customerId &&
        o.viewOrderUrl == viewOrderUrl &&
        listEquals(o.lineItems, lineItems) &&
        listEquals(o.shippingLines, shippingLines) &&
        listEquals(o.taxLines, taxLines) &&
        listEquals(o.feeLines, feeLines) &&
        listEquals(o.couponLines, couponLines) &&
        o.customer == customer;
  }
}
