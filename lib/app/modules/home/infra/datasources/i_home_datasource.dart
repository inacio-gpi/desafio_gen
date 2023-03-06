import '../models/movie_preview_model.dart';

abstract class IHomeDataSource {
  Future<MoviePreviewModel> getMoviePreviewUseCase();
}
