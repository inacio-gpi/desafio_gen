import 'package:flutter/services.dart';

import '../../../../core/error/erros.dart';
import '../../infra/datasources/i_home_datasource.dart';
import '../../infra/models/movie_preview_model.dart';

class HomeDataSource implements IHomeDataSource {
  HomeDataSource();

  @override
  Future<MoviePreviewModel> getMoviePreviewUseCase() async {
    try {
      String result = await rootBundle.loadString('/assets/mock/mock.json');

      return MoviePreviewModel.fromJson(result);
    } catch (e) {
      throw ServerFailure(message: e.toString());
    }
  }
}
