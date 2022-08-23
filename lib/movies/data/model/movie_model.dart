import 'package:flutter/cupertino.dart';
import 'package:movies/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  MovieModel({
   @required int id,
    @required String title,
    @required String backdropPath,
    @required List<int> genreIds,
    @required String overview,
    @required double releaseDate,
    @required double voteAverage,
  }) : super(
            id: id,
            title: title,
            backdropPath: backdropPath,
            genreIds: genreIds,
            overview: overview,
            releaseDate: releaseDate,
            voteAverage: voteAverage
  );

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      id:  json['id'],
        title:json['title'],
     backdropPath:   json['backdrop_path'],
       genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
    overview: json['overview'],
    releaseDate: json['release_date'],
       voteAverage: json['vote_average'].toDouble(),
      );
}
