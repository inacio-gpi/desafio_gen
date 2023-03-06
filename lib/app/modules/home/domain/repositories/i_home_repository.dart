import 'package:dartz/dartz.dart';

import '../../../../core/error/erros.dart';
import '../entities/movie_preview_entity.dart';

abstract class IHomeRepository {
  Future<Either<Failure, MoviePreviewEntity>> getMoviePreviewUseCase();
}
