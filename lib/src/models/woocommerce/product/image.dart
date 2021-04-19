import 'dart:convert';

class ProductImage {
  final int? id;
  final String? createdAt;
  final String? updatedAt;
  final String? src;
  final String? title;
  final String? alt;
  final int? position;
  ProductImage({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.src,
    this.title,
    this.alt,
    this.position,
  });

  ProductImage copyWith({
    int? id,
    String? createdAt,
    String? updatedAt,
    String? src,
    String? title,
    String? alt,
    int? position,
  }) {
    return ProductImage(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      src: src ?? this.src,
      title: title ?? this.title,
      alt: alt ?? this.alt,
      position: position ?? this.position,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'src': src,
      'title': title,
      'alt': alt,
      'position': position,
    };
  }

  factory ProductImage.fromMap(Map<String, dynamic> map) {
    return ProductImage(
      id: map['id'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
      src: map['src'],
      title: map['title'],
      alt: map['alt'],
      position: map['position'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductImage.fromJson(String source) =>
      ProductImage.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductImage(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, src: $src, title: $title, alt: $alt, position: $position)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ProductImage &&
        o.id == id &&
        o.createdAt == createdAt &&
        o.updatedAt == updatedAt &&
        o.src == src &&
        o.title == title &&
        o.alt == alt &&
        o.position == position;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        src.hashCode ^
        title.hashCode ^
        alt.hashCode ^
        position.hashCode;
  }
}
