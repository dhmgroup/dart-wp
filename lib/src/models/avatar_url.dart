class AvatarUrl {
  final String? url24;
  final String? url48;
  final String? url96;

  AvatarUrl({
    this.url24,
    this.url48,
    this.url96,
  });

  factory AvatarUrl.fromMap(Map<String, dynamic> json) {
    return AvatarUrl(
      url24: json['24'],
      url48: json['48'],
      url96: json['96'],
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AvatarUrl &&
          runtimeType == other.runtimeType &&
          url24 == other.url24 &&
          url48 == other.url48 &&
          url96 == other.url96;

  @override
  int get hashCode => url24.hashCode ^ url48.hashCode ^ url96.hashCode;

  @override
  String toString() {
    return 'AvatarUrl{url24: $url24, url48: $url48, url96: $url96}';
  }
}
