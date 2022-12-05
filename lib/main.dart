import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> urls = <String>[];
  bool ready = false;
  final ScrollController _controller = ScrollController();

  Future<void> _update() async {
    setState(() {
      ready = false;
    });
    for (int i = 0; i < 2; i++) {
      Response r = await get(Uri.parse("https://api.unsplash.com/photos/random/?count=30"), headers: <String, String>{
        "Authorization": "Client-ID XikfGv9_2XiJwmo6yu6YMGym4286SOBE0nlPSQAVssg",
        "count": "30"
      });
      if (r.statusCode == 200) {
        List<dynamic> data = jsonDecode(r.body) as List<dynamic>;
        for (Map<String, dynamic> item in data) {
          urls.add(item["urls"]["regular"]);
        }
      }
    }
    setState(() {
      ready = true;
    });
  }

  void _onScroll() {
    final double offset = _controller.offset;
    final double maxScrollExtent = _controller.position.maxScrollExtent;
    if (offset > (maxScrollExtent - MediaQuery.of(context).size.height) && ready) {
      print("update");
      _update();
    }
  }

  @override
  void initState() {
    super.initState();
    _update();
    _controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _update,
      child: Builder(builder: (BuildContext context) {
        if (!ready) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return CustomScrollView(
            controller: _controller,
            slivers: <Widget>[
              SliverGrid(
                delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    decoration:
                        BoxDecoration(image: DecorationImage(image: NetworkImage(urls[index]), fit: BoxFit.cover)),
                  );
                }, childCount: urls.length),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
              ),
            ],
          );
        }
      }),
    );
  }
}
