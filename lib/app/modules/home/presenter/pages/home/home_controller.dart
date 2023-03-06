import 'package:flutter/material.dart';

import '../../../domain/entities/movie_preview_entity.dart';
import '../../../domain/usecases/get_movie_preview_usecase.dart';

class HomeController {
  final IGetMoviePreviewUseCase _getMoviePreviewUseCase;

  HomeController(this._getMoviePreviewUseCase) {
    _load();
  }
  final moviePreview = ValueNotifier<MoviePreviewEntity?>(null);

  Future<void> _load() async {
    final result = await _getMoviePreviewUseCase();
    return result.fold(
      (exception) => throw 'Falha ao carregar arquivo.',
      (results) {
        moviePreview.value = results;
      },
    );
  }
}
