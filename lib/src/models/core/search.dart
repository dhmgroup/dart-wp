import 'dart:convert';

class Search {
  ///Unique identifier for the object.
  final int? id;

  ///The title for the object.
  final String? title;

  ///URL to the object.
  final String? url;

  ///Object type.
  ///
  /// One of: "post"
  final String? type;

  ///Object subtype.
  ///
  /// One of: "post", "page"
  final String? subtype;
  Search({
    this.id,
    this.title,
    this.url,
    this.type,
    this.subtype,
  });

  Search copyWith({
    int? id,
    String? title,
    String? url,
    String? type,
    String? subtype,
  }) {
    return Search(
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      type: type ?? this.type,
      subtype: subtype ?? this.subtype,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'url': url,
      'type': type,
      'subtype': subtype,
    };
  }

  factory Search.fromMap(Map<String, dynamic> map) {
    return Search(
      id: map['id'],
      title: map['title'],
      url: map['url'],
      type: map['type'],
      subtype: map['subtype'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Search.fromJson(String source) => Search.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Search(id: $id, title: $title, url: $url, type: $type, subtype: $subtype)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Search &&
        other.id == id &&
        other.title == title &&
        other.url == url &&
        other.type == type &&
        other.subtype == subtype;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        url.hashCode ^
        type.hashCode ^
        subtype.hashCode;
  }
}

List<Search>? parseSearches(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<Search>((json) => Search.fromMap(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<Search>((json) => Search.fromMap(json))
        .toList();
  }
}
