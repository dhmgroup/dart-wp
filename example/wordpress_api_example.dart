import 'package:wordpress_api/wordpress_api.dart';

void main() async {
  final api = WordPressAPI('mwebantu.com');
  final res = await api.posts.fetch();

  for (final post in res.data as List<Post>) {
    print(WPUtils.parseHtml(post.content));
  }
}
