import 'dart:convert';

class ProductDimensions {
  final String? height;
  final String? width;
  final String? length;
  final String? unit;
  ProductDimensions({
    this.height,
    this.width,
    this.length,
    this.unit,
  });

  ProductDimensions copyWith({
    String? height,
    String? width,
    String? length,
    String? unit,
  }) {
    return ProductDimensions(
      height: height ?? this.height,
      width: width ?? this.width,
      length: length ?? this.length,
      unit: unit ?? this.unit,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'height': height,
      'width': width,
      'length': length,
      'unit': unit,
    };
  }

  factory ProductDimensions.fromMap(Map<String, dynamic> map) {
    return ProductDimensions(
      height: map['height'],
      width: map['width'],
      length: map['length'],
      unit: map['unit'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDimensions.fromJson(String source) =>
      ProductDimensions.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductDimensions(height: $height, width: $width, length: $length, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductDimensions &&
        other.height == height &&
        other.width == width &&
        other.length == length &&
        other.unit == unit;
  }

  @override
  int get hashCode {
    return height.hashCode ^ width.hashCode ^ length.hashCode ^ unit.hashCode;
  }
}
