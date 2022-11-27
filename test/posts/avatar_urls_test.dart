import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:wordpress_api/wordpress_api.dart';

import '../json_response/json_response.dart';
import '../mock_wordpress_api.dart';

void main() {
  group('test avatar url model', () {
    test('get author avatar urls from embedded ', () async {
      String responseData = await jsonResponse(singlePostWithEmbeddedObjects);
      WordPressAPI wpApi = MockWordPressApi(
        httpStatusCode: HttpStatus.ok,
        responseData: jsonDecode(responseData),
      );
      int postId = 4711;

      // get single post from id with embedded items
      Map<String, dynamic> queryParams = {
        '_embed': 'wp:term,wp:featuredmedia,author,replies',
      };
      WPResponse postResponse =
          await wpApi.posts.fetch(id: postId, args: queryParams);

      Post post = postResponse.data;
      AvatarUrl avatarUrl = post.embedModel!.author!.first.avatarUrls!;

      expect(postResponse.statusCode, HttpStatus.ok);
      expect(avatarUrl.url24,
          'http://2.gravatar.com/avatar/e8b6e507587b3c4bf89a517925fc32d1?s=24&d=mm&r=g');
      expect(avatarUrl.url48,
          'http://2.gravatar.com/avatar/e8b6e507587b3c4bf89a517925fc32d1?s=48&d=mm&r=g');
      expect(avatarUrl.url96,
          'http://2.gravatar.com/avatar/e8b6e507587b3c4bf89a517925fc32d1?s=96&d=mm&r=g');
    });
  });
}
