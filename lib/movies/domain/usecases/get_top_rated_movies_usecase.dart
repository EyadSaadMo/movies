import 'package:dartz/dartz.dart';
import 'package:movies/core/error/failure.dart';
import 'package:movies/core/useCase/base_use_case.dart';
import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/repository/base_movie_repository.dart';

class GetTopRatedMovieUseCase extends BaseUseCase<List<Movie>,NoParameters>{

  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMovieUseCase(this.baseMovieRepository);

  Future<Either<Failure,List<Movie>>> call(NoParameters noParameters)async{
    return await baseMovieRepository.getTopRatedMovies();
  }
}