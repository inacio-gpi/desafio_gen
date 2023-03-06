import 'package:dartz/dartz.dart';

import '../../../../core/error/erros.dart';
import '../../domain/entities/movie_preview_entity.dart';
import '../../domain/repositories/i_home_repository.dart';
import '../datasources/i_home_datasource.dart';

class HomeRepository implements IHomeRepository {
  final IHomeDataSource _datasource;

  HomeRepository(this._datasource);

  @override
  Future<Either<Failure, MoviePreviewEntity>> getMoviePreviewUseCase() async {
    try {
      final result = await _datasource.getMoviePreviewUseCase();
      return right(result);
    } catch (e, s) {
      print(s);
      return left(ServerFailure(message: e.toString()));
    }
  }
}
