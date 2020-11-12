import 'package:flutter/material.dart';
import 'package:wordpress_api/wordpress_api.dart';

const String wpURL = "";
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PostsPage(),
    );
  }
}

class PostsPage extends StatelessWidget {
  final WordPressAPI wp = WordPressAPI(wpURL);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WP API Flutter'),
      ),
      body: FutureBuilder(
        future: wp.getPosts(),
        builder: (context, AsyncSnapshot<List<PostSchema>> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          }
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                final post = snapshot.data[index];
                return Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                  child: ListTile(
                    title: Text(
                      post.title['rendered'],
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    subtitle: Text(post.excerpt['rendered']),
                  ),
                );
              },
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
