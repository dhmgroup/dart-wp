class MediaSize {
  final int width;
  final int height;
  final String mimeType;
  final String sourceUrl;
  final String file;

  MediaSize({
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
    required this.file,
  });

  factory MediaSize.fromMap(Map<String, dynamic> map) {
    return MediaSize(
      width: map['width'],
      height: map['height'],
      mimeType: map['mime_type'],
      sourceUrl: map['source_url'],
      file: map['file'],
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediaSize &&
          runtimeType == other.runtimeType &&
          width == other.width &&
          height == other.height &&
          mimeType == other.mimeType &&
          sourceUrl == other.sourceUrl &&
          file == other.file;

  @override
  int get hashCode =>
      width.hashCode ^
      height.hashCode ^
      mimeType.hashCode ^
      sourceUrl.hashCode ^
      file.hashCode;

  @override
  String toString() {
    return 'MediaSize{width: $width, height: $height, mimeType: $mimeType, sourceUrl: $sourceUrl, file: $file}';
  }
}
