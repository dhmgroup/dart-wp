import 'package:flutter/material.dart';
import 'package:wordpress_api/wordpress_api.dart';

const String wpURL = "57f1e469e946.ngrok.io";
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
        title: Text('WPAPI Flutter'),
      ),
      body: FutureBuilder(
        future: wp.getPosts(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          }
          if (snapshot.hasData) {
            if (snapshot.data is Post) {
              final Post post = snapshot.data;
              return Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 8.0,
                ),
                child: ListTile(
                  title: Text(
                    post.title,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  subtitle: Text(post.excerpt),
                ),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                final Post post = snapshot.data[index];
                return Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                  child: ListTile(
                    title: Text(
                      post.title,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    subtitle: Text(post.excerpt),
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
