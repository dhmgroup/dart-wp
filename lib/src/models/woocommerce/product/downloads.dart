import 'dart:convert';

class ProductDownloads {
  final int? id;
  final String? name;
  final String? file;
  ProductDownloads({
    this.id,
    this.name,
    this.file,
  });

  ProductDownloads copyWith({
    int? id,
    String? name,
    String? file,
  }) {
    return ProductDownloads(
      id: id ?? this.id,
      name: name ?? this.name,
      file: file ?? this.file,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'file': file,
    };
  }

  factory ProductDownloads.fromMap(Map<String, dynamic> map) {
    return ProductDownloads(
      id: map['id'],
      name: map['name'],
      file: map['file'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDownloads.fromJson(String source) =>
      ProductDownloads.fromMap(json.decode(source));

  @override
  String toString() => 'ProductDownloads(id: $id, name: $name, file: $file)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductDownloads &&
        other.id == id &&
        other.name == name &&
        other.file == file;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ file.hashCode;
}
