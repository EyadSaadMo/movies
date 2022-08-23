import 'package:dartz/dartz.dart';
import 'package:movies/core/error/exception.dart';
import 'package:movies/core/error/fauiler.dart';
import 'package:movies/movies/data/dataSource/movie_remote_data_source.dart';
import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/repository/base_movie_repository.dart';

class MovieRepository extends BaseMovieRepository{
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure,List<Movie>>> getNowPlayingMovie() async
  {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try{
      return Right(result);
    } on ServerException catch (failure)
    {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }

  }

  @override
  Future<Either<Failure,List<Movie>>> getPopularMovie() async
  {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try{
      return Right(result);
    } on ServerException catch (failure)
    {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }

  }

  @override
  Future<Either<Failure,List<Movie>>> getTopRatedMovie() async
  {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try{
      return Right(result);
    } on ServerException catch (failure)
    {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }

  }

}