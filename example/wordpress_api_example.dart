import 'package:wordpress_api/wordpress_api.dart';

Future<void> main() async {
  final wp = WordPressAPI('dart-wp.dhmgroup.dev');
  final posts = await wp.getPosts();
  for (final post in posts) {
    // ignore: avoid_print
    print(post.meta);
  }
}
