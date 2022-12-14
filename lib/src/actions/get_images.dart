part of 'index.dart';

@freezed
class GetImages with _$GetImages {
  const factory GetImages() = GetImagesStart;

  const factory GetImages.successful(List<Image> images) = GetImagesSuccessful;

  const factory GetImages.error(Object error, StackTrace stackTrace) = GetImagesError;
}
