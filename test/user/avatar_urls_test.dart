import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:wordpress_api/wordpress_api.dart';

import '../json_response/json_response.dart';
import '../mock_wordpress_api.dart';

void main() {
  group('test avatar url model from user', () {
    test('get author avatar urls from user', () async {
      String responseData =
          await JsonResponses.jsonResponse(JsonResponses.user);
      WordPressAPI wpApi = MockWordPressApi(
        httpStatusCode: HttpStatus.ok,
        responseData: jsonDecode(responseData),
      );
      int userId = 1;
      AvatarUrl expectedAvatarUrl = AvatarUrl(
        url24:
            'http://2.gravatar.com/avatar/e8b6e507587b3c4bf89a517925fc32d1?s=24&d=mm&r=g',
        url48:
            'http://2.gravatar.com/avatar/e8b6e507587b3c4bf89a517925fc32d1?s=48&d=mm&r=g',
        url96:
            'http://2.gravatar.com/avatar/e8b6e507587b3c4bf89a517925fc32d1?s=96&d=mm&r=g',
      );

      // get single post from id with embedded items
      Map<String, dynamic> queryParams = {
        '_embed': 'wp:term,wp:featuredmedia,author,replies',
      };
      WPResponse postResponse =
          await wpApi.users.fetch(id: userId, args: queryParams);

      User user = postResponse.data;
      AvatarUrl avatarUrl = user.avatarUrls!;

      expect(avatarUrl, expectedAvatarUrl);
    });
  });
}
