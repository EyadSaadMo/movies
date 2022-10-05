import 'package:movies/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  MovieModel({
   required super.id,
    required super. title,
    required super. backdropPath,
    required super.genreIds,
    required super. overview,
    required super. releaseDate,
    required super. voteAverage,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      id:  json['id'],
        title:json['title'],
     backdropPath:   json['backdrop_path'],
     // genreIds: List.castFrom<dynamic, int>(json['genre_ids']),
       genreIds: List<int>.from(json['genre_ids'].map((e) => e)), /// 'e' is an element of list
    overview: json['overview'],
    releaseDate: json['release_date'],
       voteAverage: json['vote_average'].toDouble(),
      );
}
