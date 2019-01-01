import 'package:flutter/material.dart';
import 'package:wordpress_api/wordpress_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'WP API Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int page = 0;
  List posts = [];
  bool fetching = false;
  bool canFetch = true;
  WordPressAPI api = WordPressAPI('domain.com');

  @override
  void initState() {
    _fetchPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> post = posts[index];
          return Container(
            color: Colors.white,
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  post['title']['rendered'],
                ),
              ),
              subtitle: Text(
                post['excerpt']['rendered'],
              ),
            ),
          );
        },
        itemCount: posts.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _fetchPosts,
        tooltip: 'Fetch Posts',
        child: Icon(Icons.arrow_downward),
      ),
    );
  }

  void _fetchPosts() async {
    // print('FETCH POSTS CALLED');
    if (canFetch && !fetching) {
      // print('BEGINING FETCH');
      setState(() {
        fetching = true;
        page++;
      });
      // print('FETCH POSTS CALLED');
      final res = await api.getAsync('posts?page=$page');
      final data = res['data'];
      final total = res['meta']['total'];
      // print(res);
      // print('DATA: $data');
      if (data != null) {
        setState(() {
          posts.addAll(data);
          page++;
          fetching = false;
        });
      }

      if (posts.length == total) {
        setState(() {
          canFetch = false;
        });
        // print('FETCHING DISABLED');
      }
      // print('DONE FETCHING');
    }
  }
}
