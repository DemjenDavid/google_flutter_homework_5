import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:homework_5/src/actions/index.dart';
import 'package:homework_5/src/data/get_images.dart';
import 'package:homework_5/src/epics/app_epics.dart';
import 'package:homework_5/src/model/index.dart' as cstm;
import 'package:homework_5/src/presentation/details_page.dart';
import 'package:homework_5/src/presentation/home_page.dart';
import 'package:homework_5/src/reducer/reducer.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  final Client client = Client();
  final ImageApi api = ImageApi(client);
  final AppEpics epics = AppEpics(api);
  final Store<cstm.AppState> store = Store<cstm.AppState>(
    reducer,
    initialState: const cstm.AppState(),
    middleware: <Middleware<cstm.AppState>>[
      EpicMiddleware<cstm.AppState>(epics.epic),
    ],
  )..dispatch(const GetImages());
  
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.store});

  final Store<cstm.AppState> store;
  @override
  Widget build(BuildContext context) {
    return StoreProvider<cstm.AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        routes: <String, WidgetBuilder>{
          '/imageDetail': (BuildContext context) {
            return const DetailPage();
          }
        },
      ),
    );
  }
}
