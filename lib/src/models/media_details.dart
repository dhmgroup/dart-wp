import 'package:wordpress_api/src/models.dart';

class MediaDetail {
  /// width of image or video
  final int? width;

  /// height of image or video
  final int? height;

  /// wp file location
  final String? file;

  /// medium image size
  final MediaSize? medium;

  /// large image size
  final MediaSize? large;

  /// thumbnail image size
  final MediaSize? thumbnail;

  /// medium-large image size
  final MediaSize? mediumLarge;

  /// 1536x1536 image size
  final MediaSize? size1536;

  /// 2048x2048 image size
  final MediaSize? size2048;

  /// full image size
  final MediaSize? full;

  /// video filesize
  final int? fileSize;

  /// video mime-type
  final String? mimeType;

  /// video length in seconds
  final int? length;

  /// time formatted video length
  final String? lengthFromatted;

  /// video file format
  final String? fileformat;

  /// video data format
  final String? dataformat;

  /// audio channels
  final int? channels;

  /// audio samplerate
  final int? sampleRate;

  /// audio bitrate
  final int? bitRate;

  /// audio channel mode
  final String? channelMode;

  /// audio bitrate
  final String? bitrateMode;

  /// audio lossless
  final bool? lossless;

  /// audio encoder options
  final String? encoderOptions;

  /// audio compression ration
  final double? compressionRatio;

  /// audio comment
  final String? comment;

  /// audio year
  final String? year;

  /// audio title
  final String? title;

  /// audio artist
  final String? artist;

  /// audio genre
  final String? genre;

  /// audio album
  final String? album;

  MediaDetail({
    this.width,
    this.height,
    this.file,
    this.medium,
    this.large,
    this.thumbnail,
    this.mediumLarge,
    this.size1536,
    this.size2048,
    this.full,
    this.fileSize,
    this.mimeType,
    this.length,
    this.lengthFromatted,
    this.fileformat,
    this.dataformat,
    this.channels,
    this.sampleRate,
    this.bitRate,
    this.channelMode,
    this.bitrateMode,
    this.lossless,
    this.encoderOptions,
    this.compressionRatio,
    this.comment,
    this.year,
    this.title,
    this.artist,
    this.genre,
    this.album,
  });

  factory MediaDetail.fromMap(Map<String, dynamic> map) {
    final sizes = map['sizes'];
    return MediaDetail(
      width: map['width'],
      height: map['height'],
      file: map['file'],
      medium:
          sizes['medium'] != null ? MediaSize.fromMap(sizes['medium']) : null,
      large: sizes['large'] != null ? MediaSize.fromMap(sizes['large']) : null,
      thumbnail: sizes['thumbnail'] != null
          ? MediaSize.fromMap(sizes['thumbnail'])
          : null,
      mediumLarge: sizes['medium_large'] != null
          ? MediaSize.fromMap(sizes['medium_large'])
          : null,
      size1536: sizes['1536x1536'] != null
          ? MediaSize.fromMap(sizes['1536x1536'])
          : null,
      size2048: sizes['2048x2048'] != null
          ? MediaSize.fromMap(sizes['2048x2048'])
          : null,
      full: sizes['full'] != null ? MediaSize.fromMap(sizes['full']) : null,
      fileSize: map['filesize'],
      mimeType: map['mime_type'],
      length: map['length'],
      lengthFromatted: map['length_formatted'],
      fileformat: map['fileformat'],
      dataformat: map['dataformat'],
      channels: map['channels'],
      sampleRate: map['sample_rate'],
      bitRate: map['bitrate'],
      channelMode: map['channelmode'],
      bitrateMode: map['bitrate_mode'],
      lossless: map['lossless'],
      encoderOptions: map['encoder_options'],
      compressionRatio: map['compression_ratio'],
      comment: map['comment'],
      year: map['year'],
      title: map['title'],
      artist: map['artist'],
      genre: map['genre'],
      album: map['album'],
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediaDetail &&
          runtimeType == other.runtimeType &&
          width == other.width &&
          height == other.height &&
          file == other.file &&
          medium == other.medium &&
          large == other.large &&
          thumbnail == other.thumbnail &&
          mediumLarge == other.mediumLarge &&
          size1536 == other.size1536 &&
          size2048 == other.size2048 &&
          full == other.full &&
          fileSize == other.fileSize &&
          mimeType == other.mimeType &&
          length == other.length &&
          lengthFromatted == other.lengthFromatted &&
          fileformat == other.fileformat &&
          dataformat == other.dataformat &&
          channels == other.channels &&
          sampleRate == other.sampleRate &&
          bitRate == other.bitRate &&
          channelMode == other.channelMode &&
          bitrateMode == other.bitrateMode &&
          lossless == other.lossless &&
          encoderOptions == other.encoderOptions &&
          compressionRatio == other.compressionRatio &&
          comment == other.comment &&
          year == other.year &&
          title == other.title &&
          artist == other.artist &&
          genre == other.genre &&
          album == other.album;

  @override
  int get hashCode =>
      width.hashCode ^
      height.hashCode ^
      file.hashCode ^
      medium.hashCode ^
      large.hashCode ^
      thumbnail.hashCode ^
      mediumLarge.hashCode ^
      size1536.hashCode ^
      size2048.hashCode ^
      full.hashCode ^
      fileSize.hashCode ^
      mimeType.hashCode ^
      length.hashCode ^
      lengthFromatted.hashCode ^
      fileformat.hashCode ^
      dataformat.hashCode ^
      channels.hashCode ^
      sampleRate.hashCode ^
      bitRate.hashCode ^
      channelMode.hashCode ^
      bitrateMode.hashCode ^
      lossless.hashCode ^
      encoderOptions.hashCode ^
      compressionRatio.hashCode ^
      comment.hashCode ^
      year.hashCode ^
      title.hashCode ^
      artist.hashCode ^
      genre.hashCode ^
      album.hashCode;

  @override
  String toString() {
    return 'MediaDetail{width: $width, height: $height, file: $file, medium: $medium, large: $large, thumbnail: $thumbnail, mediumLarge: $mediumLarge, size1536: $size1536, size2048: $size2048, full: $full, fileSize: $fileSize, mimeType: $mimeType, length: $length, lengthFromatted: $lengthFromatted, fileformat: $fileformat, dataformat: $dataformat, channels: $channels, sampleRate: $sampleRate, bitRate: $bitRate, channelMode: $channelMode, bitrateMode: $bitrateMode, lossless: $lossless, encoderOptions: $encoderOptions, compressionRatio: $compressionRatio, comment: $comment, year: $year, title: $title, artist: $artist, genre: $genre, album: $album}';
  }
}
