import 'package:homework_5/src/actions/index.dart';
import 'package:homework_5/src/data/get_images.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../model/index.dart';

class AppEpics{
  AppEpics(this._api);

  final ImageApi _api;

  // action => action
  Epic<AppState> get epic{
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetImagesStart>(_getImagesStart),
    ]);
  }

  Stream<dynamic> _getImagesStart(Stream<GetImagesStart> actions, EpicStore<AppState> store){
    return actions
        .asyncMap((GetImagesStart action) => _api.getImages())
        .map((List<Image> images) => GetImages.successful(images))
        .onErrorReturnWith((Object error, StackTrace stacktrace)=> GetImages.error(error, stacktrace));
  }
}