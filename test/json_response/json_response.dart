import 'dart:io';

/// single post with embedded wp:term wp:featuredmedia author replies
const String singlePostWithEmbeddedObjects =
    'test/json_response/single_post_with_embedded_objects.json';

Future<String> jsonResponse(String responseFile) async {
  final file = File(responseFile);
  return await file.readAsString();
}
