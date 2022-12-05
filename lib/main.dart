import 'dart:convert';
import 'dart:io';

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

    Future<void> _update() async{
      setState(() {ready = false;});
      Response r = await get(Uri.parse("https://api.unsplash.com/photos/random/?count=9"),
          headers: {
            "Authorization":"Client-ID XikfGv9_2XiJwmo6yu6YMGym4286SOBE0nlPSQAVssg",
            "count":"9"
          }
      );
      if(r.statusCode == 200) {
        urls.clear();
        List<dynamic> data = jsonDecode(r.body) as List<dynamic>;
        for (Map<String, dynamic> item in data) {
          urls.add(item["urls"]["regular"]);
        }
      }
      setState(() {ready = true;});
    }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _update();
  }

  @override
  Widget build(BuildContext context) {

    return
        Container(
          child: RefreshIndicator(
            onRefresh: _update,
            child: Builder(
              builder: (context) {
                if(!ready){
                  return Center(
                    child: const CircularProgressIndicator(
                    ),
                  );
                }
                else{
                  return CustomScrollView(

                    slivers:[
                      SliverGrid(
                            delegate: SliverChildBuilderDelegate(
                              (context, index){
                                return Container(
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: NetworkImage(urls[index]),
                                      fit: BoxFit.cover
                                      )
                                    ),
                                );
                              },
                              childCount: urls.length
                            ),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 8.0,
                              mainAxisSpacing: 8.0,
                            ),

                        ),

                    ],
                  );
                }

              }
            ),
          ),
        );
  }
}
