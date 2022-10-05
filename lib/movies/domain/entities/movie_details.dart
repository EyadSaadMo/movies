import 'package:equatable/equatable.dart';

import 'genres_details.dart';

class MovieDetails extends Equatable {

  final String backdropPath;
  List<GenresDetails> genres;
  final int id;
  final String overView;
  final String releaseDate;
  final int runTime;
  final String title;
  final double voteAverage;
  MovieDetails({
    required this.backdropPath,
    required this.id,
    required this.genres,
    required this.overView,
    required this.releaseDate,
    required this.runTime,
    required this.title,
    required this.voteAverage,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [backdropPath,id,overView,genres,releaseDate,voteAverage,runTime,title];
}
