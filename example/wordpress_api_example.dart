import 'package:wordpress_api/wordpress_api.dart';

void main() async {
  final api = WordPressAPI('wp-site.domain');
  final posts = await api.posts.fetch();

  print(posts.data);
}
