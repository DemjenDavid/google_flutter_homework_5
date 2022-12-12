// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:homework_5/main.dart';
import 'package:homework_5/src/actions/index.dart';
import 'package:homework_5/src/data/get_images.dart';
import 'package:homework_5/src/epics/app_epics.dart';
import 'package:homework_5/src/model/index.dart' as cstm;
import 'package:homework_5/src/reducer/reducer.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
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
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp(store: store,));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
