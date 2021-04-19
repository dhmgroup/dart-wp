import 'dart:convert';

import 'package:wordpress_api/src/models/woocommerce/reports/totals.dart';

class SalesReport {
  final String? totalSales;
  final String? netSales;
  final String? averageSales;
  final int? totalOrders;
  final int? totalItems;
  final String? totalTax;
  final String? totalShipping;
  final int? totalRefunds;
  final String? totalDiscount;
  final String? totalsGroupedBy;
  final Totals? totals;
  final int? totalCustomers;
  SalesReport({
    this.totalSales,
    this.netSales,
    this.averageSales,
    this.totalOrders,
    this.totalItems,
    this.totalTax,
    this.totalShipping,
    this.totalRefunds,
    this.totalDiscount,
    this.totalsGroupedBy,
    this.totals,
    this.totalCustomers,
  });

  SalesReport copyWith({
    String? totalSales,
    String? netSales,
    String? averageSales,
    int? totalOrders,
    int? totalItems,
    String? totalTax,
    String? totalShipping,
    int? totalRefunds,
    String? totalDiscount,
    String? totalsGroupedBy,
    Totals? totals,
    int? totalCustomers,
  }) {
    return SalesReport(
      totalSales: totalSales ?? this.totalSales,
      netSales: netSales ?? this.netSales,
      averageSales: averageSales ?? this.averageSales,
      totalOrders: totalOrders ?? this.totalOrders,
      totalItems: totalItems ?? this.totalItems,
      totalTax: totalTax ?? this.totalTax,
      totalShipping: totalShipping ?? this.totalShipping,
      totalRefunds: totalRefunds ?? this.totalRefunds,
      totalDiscount: totalDiscount ?? this.totalDiscount,
      totalsGroupedBy: totalsGroupedBy ?? this.totalsGroupedBy,
      totals: totals ?? this.totals,
      totalCustomers: totalCustomers ?? this.totalCustomers,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'total_sales': totalSales,
      'net_sales': netSales,
      'average_sales': averageSales,
      'total_orders': totalOrders,
      'total_items': totalItems,
      'total_tax': totalTax,
      'total_shipping': totalShipping,
      'total_refunds': totalRefunds,
      'total_discount': totalDiscount,
      'totals_grouped_by': totalsGroupedBy,
      'totals': totals?.toMap(),
      'total_customers': totalCustomers,
    };
  }

  factory SalesReport.fromMap(Map<String, dynamic> map) {
    return SalesReport(
      totalSales: map['total_sales'],
      netSales: map['net_sales'],
      averageSales: map['average_sales'],
      totalOrders: map['total_orders']?.toInt(),
      totalItems: map['total_items']?.toInt(),
      totalTax: map['total_tax'],
      totalShipping: map['total_shipping'],
      totalRefunds: map['total_refunds']?.toInt(),
      totalDiscount: map['total_discount'],
      totalsGroupedBy: map['totals_grouped_by'],
      totals: Totals.fromMap(map['totals']),
      totalCustomers: map['total_customers']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory SalesReport.fromJson(String source) =>
      SalesReport.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SalesReport(totalSales: $totalSales, netSales: $netSales, averageSales: $averageSales, totalOrders: $totalOrders, totalItems: $totalItems, totalTax: $totalTax, totalShipping: $totalShipping, totalRefunds: $totalRefunds, totalDiscount: $totalDiscount, totalsGroupedBy: $totalsGroupedBy, totals: $totals, totalCustomers: $totalCustomers)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SalesReport &&
        o.totalSales == totalSales &&
        o.netSales == netSales &&
        o.averageSales == averageSales &&
        o.totalOrders == totalOrders &&
        o.totalItems == totalItems &&
        o.totalTax == totalTax &&
        o.totalShipping == totalShipping &&
        o.totalRefunds == totalRefunds &&
        o.totalDiscount == totalDiscount &&
        o.totalsGroupedBy == totalsGroupedBy &&
        o.totals == totals &&
        o.totalCustomers == totalCustomers;
  }

  @override
  int get hashCode {
    return totalSales.hashCode ^
        netSales.hashCode ^
        averageSales.hashCode ^
        totalOrders.hashCode ^
        totalItems.hashCode ^
        totalTax.hashCode ^
        totalShipping.hashCode ^
        totalRefunds.hashCode ^
        totalDiscount.hashCode ^
        totalsGroupedBy.hashCode ^
        totals.hashCode ^
        totalCustomers.hashCode;
  }
}
