class AvatarUrl {
  final String? url24;
  final String? url48;
  final String? url96;

  AvatarUrl({
    this.url24,
    this.url48,
    this.url96,
  });

  factory AvatarUrl.fromJson(Map<String, dynamic> json) {
    return AvatarUrl(
      url24: json['24'],
      url48: json['48'],
      url96: json['96'],
    );
  }
}
