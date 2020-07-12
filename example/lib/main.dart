import 'package:wordpress_api/wordpress_api.dart';

void main() async {
  final wp = WordPressAPI('mwebantu.com');
  final posts = (await wp.search("lungu")).data;
  for (final post in posts) {
    print(post);
  }
}
