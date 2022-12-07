import 'dart:convert';
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
        "/imageDetail": (BuildContext context){
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
  List<cstm.Image> images= <cstm.Image>[];

  Future<void> _update() async {
    setState(() {
      ready = false;
    });
    final Client c = Client();
    final ImageApi api = ImageApi(c);
    List<cstm.Image> img = await api.getImages();

    if(img.isNotEmpty){
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
                    onTap: (){
                      Navigator.pushNamed(context, "/imageDetail", arguments: image);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration:
                          BoxDecoration(
                              image: DecorationImage(image: NetworkImage(image.url.regular), fit: BoxFit.cover)
                          ),
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

class DetailPage extends StatelessWidget{
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cstm.Image image = ModalRoute.of(context)!.settings.arguments! as cstm.Image;
    return Scaffold(
      appBar: AppBar(
         title: Text("Artist: ${image.user.name!}"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(image.url.regular,
              height: MediaQuery.of(context).size.height*.5,
            ),
            Text("Date: ${image.date}"),
            Text("Likes: ${image.likes}"),
          ],
        ),
    );
  }

}
