import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:homework_5/src/actions/index.dart';
import 'package:homework_5/src/model/index.dart' as cstm;
import 'package:redux/redux.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final Store<cstm.AppState> store = StoreProvider.of<cstm.AppState>(context);



    return StoreConnector<cstm.AppState,cstm.AppState>(
      converter: (Store<cstm.AppState> store)=> store.state,
      builder: (BuildContext context, cstm.AppState state){
        final List<cstm.Image> images = state.images;
        final bool isLoading = state.isLoading;
        return RefreshIndicator(
          onRefresh: () async {
            await store.dispatch(const GetImages());
          },
          child: Builder(
            builder: (BuildContext context) {
              if (!isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return CustomScrollView(
                  slivers: <Widget>[
                    SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          final cstm.Image image = images[index];
                          return GestureDetector(
                            onTap: () {
                              store.dispatch(SetSelectedImage(image));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage(image.url.regular), fit: BoxFit.cover),
                              ),
                            ),
                          );
                        },
                        childCount: images.length,
                      ),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        );
      },
    );
  }
}
