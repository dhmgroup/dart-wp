import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:wordpress_api/wordpress_api.dart';

import '../json_response/json_response.dart';
import '../mock_wordpress_api.dart';

void main() {
  group('test avatar url model from comment', () {
    test('get author avatar urls from comment', () async {
      String responseData =
          await JsonResponses.jsonResponse(JsonResponses.postComments);
      WordPressAPI wpApi = MockWordPressApi(
        httpStatusCode: HttpStatus.ok,
        responseData: jsonDecode(responseData),
      );
      int postId = 1;
      AvatarUrl expectedAvatarUrl = AvatarUrl(
        url24:
            'http://1.gravatar.com/avatar/d7a973c7dab26985da5f961be7b74480?s=24&d=mm&r=g',
        url48:
            'http://1.gravatar.com/avatar/d7a973c7dab26985da5f961be7b74480?s=48&d=mm&r=g',
        url96:
            'http://1.gravatar.com/avatar/d7a973c7dab26985da5f961be7b74480?s=96&d=mm&r=g',
      );

      // get cooments from post id
      Map<String, dynamic> queryParams = {
        'post': postId,
      };
      WPResponse commentResponse =
          await wpApi.comments.fetch(args: queryParams);
      List<Comment> commentList = commentResponse.data;
      AvatarUrl avatarUrl = commentList.first.authorAvatarUrls!;

      expect(avatarUrl, expectedAvatarUrl);
    });
  });
}
