import 'package:flutter/services.dart';

import '../../../../core/error/erros.dart';
import '../../../../core/http/i_rest_client.dart';
import '../../infra/datasources/i_home_datasource.dart';
import '../../infra/models/movie_preview_model.dart';

class HomeDataSource implements IHomeDataSource {
  final IRestClient _restClient;
  HomeDataSource(this._restClient);

  @override
  Future<MoviePreviewModel> getMoviePreviewUseCase() async {
    try {
      // final result = _restClient.get(path);
      String result = await rootBundle.loadString('assets/mock/mock.json');

      return MoviePreviewModel.fromJson(result);
    } catch (e) {
      throw ServerFailure(message: e.toString());
    }
  }
}
