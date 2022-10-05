import 'package:movies/movies/data/model/genres_details_model.dart';
import 'package:movies/movies/domain/entities/genres_details.dart';
import 'package:movies/movies/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  MovieDetailsModel(
      {required super.backdropPath,
      required super.id,
      required super.genres,
      required super.overView,
      required super.releaseDate,
      required super.runTime,
      required super.title,
      required super.voteAverage});

  factory MovieDetailsModel.fromJson(Map<String,dynamic> json ){
    return MovieDetailsModel(backdropPath: json['backdrop_path'],
        id: json['id'],
        genres: List<GenresDetailsModel>.from(json['genres'].map((e) => GenresDetailsModel.fromJson(e))),
        overView: json['over_view'],
        releaseDate:json ['release_date'],
        runTime:json ['run_time'],
        title:json ['title'],
        voteAverage:json ['vote_average'].toDouble());
  }
}
