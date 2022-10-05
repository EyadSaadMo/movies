
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/utils/enums.dart';
import 'package:movies/movies/domain/entities/movie_details.dart';
import 'package:movies/movies/domain/usecases/get_movie_details_usecase.dart';

import '../domain/entities/recommendation.dart';
import '../domain/usecases/get_recommendation_usecase.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;

  MovieDetailsBloc(this.getMovieDetailsUseCase,this.getRecommendationUseCase) : super(MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieDetailsEvent>(_getRecommendataion);
  }

  FutureOr<void> _getMovieDetails(GetMovieDetailsEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result = await getMovieDetailsUseCase(
        MovieDetailsParameters(movieId: event.id));

    result.fold((l) =>
        emit(state.copyWith(
          movieDetailsState: RequestState.error,
          message: l.message,

        )), (r) =>
        state.copyWith(
          movieDetailsState: RequestState.loaded,
          movieDetails: r,
        ));
  }


  FutureOr<void> _getRecommendataion(GetMovieDetailsEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result = await getRecommendationUseCase(
        RecommendationParameter(event.id));

    result.fold((l) =>
        emit(state.copyWith(
          recommendationState: RequestState.error,
          recommendationMessage: l.message,

        )), (r) =>
        state.copyWith(
          recommendationState: RequestState.loaded,
          recommendation: r,
        ));
  }
}