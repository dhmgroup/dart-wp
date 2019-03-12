import 'package:flutter/material.dart';
import 'package:wordpress_api/wordpress_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WPAPI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final wp = WordPressAPI('260blog.com');
  final List<Map<String, dynamic>> posts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WPAPI Demo'),
      ),
      body: FutureBuilder(
        builder: (BuildContext context,
            AsyncSnapshot<Map<String, dynamic>> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error),
            );
          }

          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            default:
              final posts = snapshot.data['data'];
              return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(posts[index]['title']['rendered']),
                  );
                },
                itemCount: posts.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(height: 16.0);
                },
              );
          }
        },
        future: wp.getAsync('posts'),
      ),
    );
  }
}
