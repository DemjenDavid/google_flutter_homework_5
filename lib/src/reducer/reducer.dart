import 'package:homework_5/src/actions/index.dart';
import 'package:redux/redux.dart';

import '../model/index.dart';

// state + action => state

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetImagesStart>(_getImagesStart),
  TypedReducer<AppState, GetImagesSuccessful>(_getImagesSuccessful),
  TypedReducer<AppState, GetImagesError>(_getImagesError),
  TypedReducer<AppState, SetSelectedImage>(_setSelectedImage),
]);


AppState _getImagesSuccessful(AppState state, GetImagesSuccessful action) {
  return state.copyWith(
    isLoading: false,
    images: <Image>[
      ...action.images,
    ]
  );
}

AppState _getImagesStart(AppState state, GetImagesStart action) {
  return state.copyWith(isLoading: true);
}

AppState _getImagesError(AppState state, GetImagesError action) {
  return state.copyWith(isLoading: false);
}

AppState _setSelectedImage(AppState state, SetSelectedImage action) {
  return state.copyWith(selectedImage: action.image);
}
