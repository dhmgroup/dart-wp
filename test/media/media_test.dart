import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:wordpress_api/src/helpers.dart';
import 'package:wordpress_api/src/main.dart';
import 'package:wordpress_api/src/models.dart';

import '../json_response/json_response.dart';
import '../mock_wordpress_api.dart';

void main() {
  late WordPressAPI wpApi;

  setUpAll(() async {
    String responseData =
        await JsonResponses.jsonResponse(JsonResponses.postMediaList);
    wpApi = MockWordPressApi(
      httpStatusCode: HttpStatus.ok,
      responseData: jsonDecode(responseData),
    );
  });

  group('test media details', () {
    test('media details has correct size', () async {
      int postId = 1832;
      // Query Params to get all attached media items
      Map<String, dynamic> queryParams = {'parent': postId};

      WPResponse mediaResponse = await wpApi.media.fetch(args: queryParams);
      List<Media> media = mediaResponse.data;

      expect(mediaResponse.statusCode, HttpStatus.ok);
      expect(media.length, 7);
    });

    test('images details was filled', () async {
      int expectedMediaId = 1029;
      int postId = 1832;
      MediaDetail expectedMediaDetail = MediaDetail(
        width: 1200,
        height: 400,
        file: '2013/03/image-alignment-1200x4002-1.jpg',
        fileSize: 35514,
        medium: MediaSize(
          file: 'image-alignment-1200x4002-1-300x100.jpg',
          width: 300,
          height: 100,
          mimeType: 'image/jpeg',
          sourceUrl:
              'http://localhost/wp-content/uploads/2013/03/image-alignment-1200x4002-1-300x100.jpg',
        ),
        large: MediaSize(
            file: 'image-alignment-1200x4002-1-1024x341.jpg',
            width: 1024,
            height: 341,
            mimeType: 'image/jpeg',
            sourceUrl:
                'http://localhost/wp-content/uploads/2013/03/image-alignment-1200x4002-1-1024x341.jpg'),
        thumbnail: MediaSize(
          width: 150,
          height: 150,
          mimeType: 'image/jpeg',
          sourceUrl:
              'http://localhost/wp-content/uploads/2013/03/image-alignment-1200x4002-1-150x150.jpg',
          file: 'image-alignment-1200x4002-1-150x150.jpg',
        ),
        mediumLarge: MediaSize(
          width: 768,
          height: 256,
          mimeType: 'image/jpeg',
          sourceUrl:
              'http://localhost/wp-content/uploads/2013/03/image-alignment-1200x4002-1-768x256.jpg',
          file: 'image-alignment-1200x4002-1-768x256.jpg',
        ),
        full: MediaSize(
          width: 1200,
          height: 400,
          mimeType: 'image/jpeg',
          sourceUrl:
              'http://localhost/wp-content/uploads/2013/03/image-alignment-1200x4002-1.jpg',
          file: 'image-alignment-1200x4002-1.jpg',
        ),
      );
      // Query Params to get all attached media items
      Map<String, dynamic> queryParams = {'parent': postId};

      WPResponse mediaResponse = await wpApi.media.fetch(args: queryParams);

      Media media = (mediaResponse.data as List<Media>)
          .firstWhere((element) => element.id == expectedMediaId);

      expect(media.mediaDetails, equals(expectedMediaDetail));
    });

    test('audio details was filled', () async {
      int expectedMediaId = 821;
      int postId = 1832;

      MediaDetail expectedMediaDetail = MediaDetail(
        dataformat: 'mp3',
        channels: 2,
        sampleRate: 44100,
        bitRate: 128000,
        channelMode: 'joint stereo',
        bitrateMode: 'cbr',
        lossless: false,
        encoderOptions: 'CBR128',
        compressionRatio: 0.09070294784580499,
        fileformat: 'mp3',
        fileSize: 3043247,
        mimeType: 'audio/mpeg',
        length: 190,
        lengthFromatted: '3:10',
        comment: 'None',
        year: '1921',
        title: 'St. Louis Blues (1921)',
        artist: 'Original Dixieland Jazz Band with Al Bernard',
        genre: 'Acoustic Era',
        album: 'Victor-18772',
      );

      Map<String, dynamic> queryParams = {'parent': postId};

      WPResponse mediaResponse = await wpApi.media.fetch(args: queryParams);

      Media media = (mediaResponse.data as List<Media>)
          .firstWhere((element) => element.id == expectedMediaId);

      expect(media.mediaDetails, equals(expectedMediaDetail));
    });

    test('video details was filled', () async {
      int expectedMediaId = 1835;
      int postId = 1832;
      MediaDetail expectedMediaDetail = MediaDetail(
        fileSize: 29881426,
        mimeType: 'video/mp4',
        length: 18,
        lengthFromatted: '0:18',
        width: 1920,
        height: 1080,
        fileformat: 'mp4',
        dataformat: 'quicktime',
      );

      Map<String, dynamic> queryParams = {'parent': postId};

      WPResponse mediaResponse = await wpApi.media.fetch(args: queryParams);

      Media media = (mediaResponse.data as List<Media>)
          .firstWhere((element) => element.id == expectedMediaId);

      expect(media.mediaDetails, equals(expectedMediaDetail));
    });
  });
}
