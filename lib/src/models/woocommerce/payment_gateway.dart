import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:wordpress_api/src/models/woocommerce/payment_gateway_settings.dart';

class PaymentGateway {
  final String id;
  final String title;
  final String description;
  final int order;
  final bool enabled;
  final String methodTitle;
  final String methodDescription;
  final List<String> methodSupports;
  final Map<String, PaymentGatewaySettings> settings;
  PaymentGateway({
    this.id,
    this.title,
    this.description,
    this.order,
    this.enabled,
    this.methodTitle,
    this.methodDescription,
    this.methodSupports,
    this.settings,
  });

  PaymentGateway copyWith({
    String id,
    String title,
    String description,
    int order,
    bool enabled,
    String methodTitle,
    String methodDescription,
    List<String> methodSupports,
    Map<String, PaymentGatewaySettings> settings,
  }) {
    return PaymentGateway(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      order: order ?? this.order,
      enabled: enabled ?? this.enabled,
      methodTitle: methodTitle ?? this.methodTitle,
      methodDescription: methodDescription ?? this.methodDescription,
      methodSupports: methodSupports ?? this.methodSupports,
      settings: settings ?? this.settings,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'order': order,
      'enabled': enabled,
      'method_title': methodTitle,
      'method_description': methodDescription,
      'method_supports': methodSupports,
      'settings': settings,
    };
  }

  factory PaymentGateway.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PaymentGateway(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      order: map['order'],
      enabled: map['enabled'],
      methodTitle: map['method_title'],
      methodDescription: map['method_description'],
      methodSupports: List<String>.from(map['method_supports']),
      settings: Map<String, PaymentGatewaySettings>.from(map['settings']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentGateway.fromJson(String source) =>
      PaymentGateway.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentGateway(id: $id, title: $title, description: $description, order: $order, enabled: $enabled, methodTitle: $methodTitle, methodDescription: $methodDescription, methodSupports: $methodSupports, settings: $settings)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final collectionEquals = const DeepCollectionEquality().equals;

    return o is PaymentGateway &&
        o.id == id &&
        o.title == title &&
        o.description == description &&
        o.order == order &&
        o.enabled == enabled &&
        o.methodTitle == methodTitle &&
        o.methodDescription == methodDescription &&
        collectionEquals(o.methodSupports, methodSupports) &&
        collectionEquals(o.settings, settings);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        order.hashCode ^
        enabled.hashCode ^
        methodTitle.hashCode ^
        methodDescription.hashCode ^
        methodSupports.hashCode ^
        settings.hashCode;
  }
}
