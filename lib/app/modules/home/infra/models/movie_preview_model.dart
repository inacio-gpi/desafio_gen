// ignore_for_file: overridden_fields, annotate_overrides

import 'dart:convert';

import '../../domain/entities/movie_preview_entity.dart';

class MoviePreviewModel extends MoviePreviewEntity {
  final List<McuMovieModel> mcu;
  MoviePreviewModel({
    required this.mcu,
  }) : super(mcu: mcu);

  Map<String, dynamic> toMap() => {
        'mcu': mcu.map((x) => x.toMap()).toList(),
      };

  factory MoviePreviewModel.fromMap(Map<String, dynamic> map) => MoviePreviewModel(
        mcu: List<McuMovieModel>.from(
          map['mcu']?.map((x) => McuMovieModel.fromMap(x)),
        ),
      );

  String toJson() => json.encode(toMap());

  factory MoviePreviewModel.fromJson(String source) => MoviePreviewModel.fromMap(json.decode(source));
}

class McuMovieModel extends McuMovieEntity {
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final int voteAverage;
  final int voteCount;
  McuMovieModel({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  }) : super(
          adult: adult,
          backdropPath: backdropPath,
          genreIds: genreIds,
          id: id,
          originalLanguage: originalLanguage,
          originalTitle: originalTitle,
          overview: overview,
          popularity: popularity,
          posterPath: posterPath,
          releaseDate: releaseDate,
          title: title,
          video: video,
          voteAverage: voteAverage,
          voteCount: voteCount,
        );

  Map<String, dynamic> toMap() => {
        'adult': adult,
        'backdrop_path': backdropPath,
        'genre_ids': genreIds,
        'id': id,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'overview': overview,
        'popularity': popularity,
        'poster_path': posterPath,
        'release_date': releaseDate,
        'title': title,
        'video': video,
        'vote_average': voteAverage,
        'vote_count': voteCount,
      };

  factory McuMovieModel.fromMap(Map<String, dynamic> map) => McuMovieModel(
        adult: map['adult'] ?? false,
        backdropPath: map['backdrop_path'] ?? '',
        genreIds: List<int>.from(map['genre_ids']),
        id: map['id']?.toInt() ?? 0,
        originalLanguage: map['original_language'] ?? '',
        originalTitle: map['original_title'] ?? '',
        overview: map['overview'] ?? '',
        popularity: map['popularity']?.toDouble() ?? 0.0,
        posterPath: map['poster_path'] ?? '',
        releaseDate: map['release_date'] ?? '',
        title: map['title'] ?? '',
        video: map['video'] ?? false,
        voteAverage: map['vote_average']?.toInt() ?? 0,
        voteCount: map['vote_count']?.toInt() ?? 0,
      );

  String toJson() => json.encode(toMap());

  factory McuMovieModel.fromJson(String source) => McuMovieModel.fromMap(json.decode(source));
}
