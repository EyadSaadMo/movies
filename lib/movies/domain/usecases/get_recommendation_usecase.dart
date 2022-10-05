import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/core/error/failure.dart';
import 'package:movies/core/useCase/base_use_case.dart';
import 'package:movies/movies/domain/entities/recommendation.dart';
import 'package:movies/movies/domain/repository/base_movie_repository.dart';

class GetRecommendationUseCase extends BaseUseCase<List<Recommendation>,RecommendationParameter>{
  final BaseMovieRepository baseMovieRepository;

  GetRecommendationUseCase(this.baseMovieRepository);
  @override
  Future<Either<Failure, List<Recommendation>>> call(RecommendationParameter parameters)async {
    return await baseMovieRepository.getRecommendation(parameters);
  }
}

class RecommendationParameter extends Equatable{
  final int id;
  RecommendationParameter(this.id);


  @override
  // TODO: implement props
  List<Object?> get props => [];
}