import 'package:flutter/material.dart';
import 'package:homework_5/src/model/image.dart' as cstm;
import 'package:http/http.dart';

import 'data/get_images.dart';

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
      routes: <String, WidgetBuilder>{
        "/imageDetail": (BuildContext context) {
          return const DetailPage();
        }
      },
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
  List<cstm.Image> images = <cstm.Image>[];

  Future<void> _update() async {
    setState(() {
      ready = false;
    });
    final Client c = Client();
    final ImageApi api = ImageApi(c);
    List<cstm.Image> img = await api.getImages();

    if (img.isNotEmpty) {
      setState(() {
        images = img;
        ready = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _update();
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
            slivers: <Widget>[
              SliverGrid(
                delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                  final cstm.Image image = images[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/imageDetail", arguments: image);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(image.url.regular), fit: BoxFit.cover)),
                    ),
                  );
                }, childCount: images.length),
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

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  static const TextStyle header1 = TextStyle(
    fontSize: 30,
  );
  static const TextStyle header2 = TextStyle(
    fontSize: 20,
  );
  static const TextStyle header3 = TextStyle(
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    final cstm.Image image = ModalRoute.of(context)!.settings.arguments! as cstm.Image;
    return Scaffold(
      appBar: AppBar(
        title: Text("Artist: ${image.user.name!}"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Image.network(
              image.url.regular,
              height: MediaQuery.of(context).size.height * .5,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Date: ${image.date}",
                  style: header2,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  "Likes: ${image.likes}",
                  style: header2,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Description: ${image.description}",
              style: header3,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "About the user:",
              style: header1,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Username: ${image.user.username}",
              style: header2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Instagram: ${image.user.instagramUsername}",
              style: header2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Bio: ${image.user.bio}", style: header3),
          ],
        ),
      ),
    );
  }
}
