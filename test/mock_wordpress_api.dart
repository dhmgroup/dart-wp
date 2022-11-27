import 'package:mockito/mockito.dart';
import 'package:wordpress_api/wordpress_api.dart';

class MockWordPressApi extends Mock implements WordPressAPI {
  final dynamic responseData;
  final int httpStatusCode;

  MockWordPressApi({required this.responseData, required this.httpStatusCode});

  @override
  Future<WPResponse> fetch(
    String endpoint, {
    String namespace = 'wpNamespace',
    Map<String, dynamic>? args,
  }) async {
    return WPResponse(statusCode: httpStatusCode, data: responseData);
  }

  @override
  PostsEndpoint get posts => PostsEndpoint(this);

  @override
  MediaEndpoint get media => MediaEndpoint(this);

  @override
  CommentsEndpoint get comments => CommentsEndpoint(this);

  @override
  UsersEndpoint get users => UsersEndpoint(this);
}
