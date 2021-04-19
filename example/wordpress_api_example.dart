import 'package:wordpress_api/wordpress_api.dart';

void main() async {
  final api = WordPressAPI('wp-site.com');
  final List<Post> posts = await api.getPosts();

  for (var post in posts) {
    print(post.title);
  }
}
