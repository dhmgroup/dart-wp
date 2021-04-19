import 'dart:convert';

/// Report totals (`/reports/***/totals`)
///
/// Represents report totals for `Coupons`, `Customers`, `Orders`, `Products` and `Reviews`
class Total {
  final String? slug;
  final String? name;
  final int? total;
  Total({
    this.slug,
    this.name,
    this.total,
  });

  Total copyWith({
    String? slug,
    String? name,
    int? total,
  }) {
    return Total(
      slug: slug ?? this.slug,
      name: name ?? this.name,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'slug': slug,
      'name': name,
      'total': total,
    };
  }

  factory Total.fromMap(Map<String, dynamic> map) {
    return Total(
      slug: map['slug'],
      name: map['name'],
      total: map['total'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Total.fromJson(String source) => Total.fromMap(json.decode(source));

  @override
  String toString() => 'Total(slug: $slug, name: $name, total: $total)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Total && o.slug == slug && o.name == name && o.total == total;
  }

  @override
  int get hashCode => slug.hashCode ^ name.hashCode ^ total.hashCode;
}
