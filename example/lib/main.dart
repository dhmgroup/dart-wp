import 'package:wordpress_api/wordpress_api.dart';

void main() async {
  final wp = WordPressAPI('260blog.com');
  final posts = (await wp.getAsync('posts'))['data'];
  for (final post in posts) {
    print(post['title']['rendered']);
  }
}
