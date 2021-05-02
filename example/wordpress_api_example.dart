import 'package:wordpress_api/wordpress_api.dart';

void main() async {
  final api = WordPressAPI('wp-site.domain');
  final res = await api.posts.fetch();

  for (final post in res.data) {
    print(post.title);
  }
}
