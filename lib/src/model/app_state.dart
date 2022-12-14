part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<Image>[]) List<Image> images,
    @Default(true) bool isLoading,
    Image? selectedImage,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
