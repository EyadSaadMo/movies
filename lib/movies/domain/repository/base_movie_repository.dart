import 'package:dartz/dartz.dart';
import 'package:movies/core/error/fauiler.dart';
import 'package:movies/movies/domain/entities/movie.dart';

abstract class BaseMovieRepository{

   Future<Either<Failure,List<Movie>>> getNowPlayingMovie();
   Future<Either<Failure,List<Movie>>> getPopularMovie();
   Future<Either<Failure,List<Movie>>> getTopRatedMovie();
}