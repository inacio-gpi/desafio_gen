import 'package:dartz/dartz.dart';

import '../../../../core/error/erros.dart';
import '../entities/movie_preview_entity.dart';
import '../repositories/i_home_repository.dart';

abstract class IGetMoviePreviewUseCase {
  Future<Either<Failure, MoviePreviewEntity>> call();
}

class GetMoviePreviewUseCase implements IGetMoviePreviewUseCase {
  final IHomeRepository _repository;

  GetMoviePreviewUseCase(this._repository);

  @override
  Future<Either<Failure, MoviePreviewEntity>> call() async => await _repository.getMoviePreviewUseCase();
}
