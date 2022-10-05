import 'package:dartz/dartz.dart';
import 'package:movies/core/error/failure.dart';
import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/entities/movie_details.dart';
import 'package:movies/movies/domain/entities/recommendation.dart';
import 'package:movies/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies/movies/domain/usecases/get_recommendation_usecase.dart';

abstract class BaseMovieRepository {

   Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

   Future<Either<Failure, List<Movie>>> getPopularMovies();

   Future<Either<Failure, List<Movie>>> getTopRatedMovies();

   Future<Either<Failure, MovieDetails>> getMovieDetails(
       MovieDetailsParameters parameters);

   Future<Either<Failure, List<Recommendation>>> getRecommendation(
       RecommendationParameter parameters);
}