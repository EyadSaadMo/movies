import 'package:dartz/dartz.dart';
import 'package:movies/core/error/fauiler.dart';
import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/repository/base_movie_repository.dart';

class GetNowPlayingMovieUseCase{

  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMovieUseCase(this.baseMovieRepository);

  Future<Either<Failure,List<Movie>>> execute()async{
    return await baseMovieRepository.getNowPlayingMovie();
  }
}