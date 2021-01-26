import 'package:wordpress_api/wordpress_api.dart';

Future<void> main() async {
  final wp = WordPressAPI('dartwp.local');
  // Get multiple posts
  final List<Post> posts = await wp.getJobs();
  for (final post in posts) {
    print(post.id);
  }
  // Single Post example
  // final Post post = await wp.getJobs(id: 1);
  // print(post.content);
}
