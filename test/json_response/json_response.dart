import 'dart:io';

class JsonResponses {
  static const String _jsonRootFolder = 'test/json_response';

  /// single post with embedded wp:term wp:featuredmedia author replies response
  static const String singlePostWithEmbeddedObjects =
      '$_jsonRootFolder/single_post_with_embedded_objects.json';

  /// attachments of a post response
  static const String postMediaList = '$_jsonRootFolder/wp_attachments.json';

  /// post comments response
  static const String postComments = '$_jsonRootFolder/post_comments.json';

  /// single user response
  static const String user = '$_jsonRootFolder/user.json';

  static Future<String> jsonResponse(String responseFile) async {
    final file = File(responseFile);
    return await file.readAsString();
  }
}
