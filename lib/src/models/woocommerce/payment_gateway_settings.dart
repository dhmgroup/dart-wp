import 'dart:convert';

class PaymentGatewaySettings {
  final String? id;
  final String? label;
  final String? description;

  ///[String] Type of setting.
  ///
  ///Options: `text`, `email`, `number`, `color`, `password`, `textarea`, `select`, `multiselect`, `radio`, `image_width` and `checkbox`.
  final String? type;
  final String? value;
  final String? dDefault;
  final String? tip;
  final String? placeholder;
  PaymentGatewaySettings({
    this.id,
    this.label,
    this.description,
    this.type,
    this.value,
    this.dDefault,
    this.tip,
    this.placeholder,
  });

  PaymentGatewaySettings copyWith({
    String? id,
    String? label,
    String? description,
    String? type,
    String? value,
    String? dDefault,
    String? tip,
    String? placeholder,
  }) {
    return PaymentGatewaySettings(
      id: id ?? this.id,
      label: label ?? this.label,
      description: description ?? this.description,
      type: type ?? this.type,
      value: value ?? this.value,
      dDefault: dDefault ?? this.dDefault,
      tip: tip ?? this.tip,
      placeholder: placeholder ?? this.placeholder,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'label': label,
      'description': description,
      'type': type,
      'value': value,
      'default': dDefault,
      'tip': tip,
      'placeholder': placeholder,
    };
  }

  factory PaymentGatewaySettings.fromMap(Map<String, dynamic> map) {
    return PaymentGatewaySettings(
      id: map['id'],
      label: map['label'],
      description: map['description'],
      type: map['type'],
      value: map['value'],
      dDefault: map['default'],
      tip: map['tip'],
      placeholder: map['placeholder'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentGatewaySettings.fromJson(String source) =>
      PaymentGatewaySettings.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentGatewaySettings(id: $id, label: $label, description: $description, type: $type, value: $value, dDefault: $dDefault, tip: $tip, placeholder: $placeholder)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is PaymentGatewaySettings &&
        o.id == id &&
        o.label == label &&
        o.description == description &&
        o.type == type &&
        o.value == value &&
        o.dDefault == dDefault &&
        o.tip == tip &&
        o.placeholder == placeholder;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        label.hashCode ^
        description.hashCode ^
        type.hashCode ^
        value.hashCode ^
        dDefault.hashCode ^
        tip.hashCode ^
        placeholder.hashCode;
  }
}
