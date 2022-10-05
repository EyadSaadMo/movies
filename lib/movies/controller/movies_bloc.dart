import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/useCase/base_use_case.dart';
import 'package:movies/core/utils/enums.dart';
import 'package:movies/movies/controller/movies_event.dart';
import 'package:movies/movies/controller/movies_state.dart';
import 'package:movies/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movies/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import '../domain/usecases/get_popular_movies_usecase.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMovieUseCase getNowPlayingMovieUseCase;
  final GetPopularMovieUseCase getPopularMovieUseCase;
  final GetTopRatedMovieUseCase topRatedMovieUseCase;

  /// is a constructor
  MoviesBloc(this.getNowPlayingMovieUseCase, this.getPopularMovieUseCase,
      this.topRatedMovieUseCase)
      : super(MoviesState()) {
    /// how to add event in bloc => using 'on'
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      /// i will call useCase
      final result = await getNowPlayingMovieUseCase(NoParameters());
      // emit(
      //   MoviesState(
      //     nowPlayingState: RequestState.loaded,
      //   ),
      // );
      result.fold(
        (l) => emit(state.copyWith(
          nowPlayingState: RequestState.error,
          nowPlayingMessage: l.message,
        )),
        (r) => emit(
          state.copyWith(
            nowPlayingState: RequestState.loaded,
            nowPlayingMovies: r,
          ),
        ),
      );
    });
    // popular
    on<GetPopularMoviesEvent>((event, emit) async {
      /// i will call useCase
      final result = await getPopularMovieUseCase(NoParameters());
      // emit(
      //   MoviesState(
      //     popularState: RequestState.loaded,
      //   ),
      // );
      result.fold(
        (l) => emit(
          state.copyWith(
            popularState: RequestState.error,
            popularMessage: l.message,
          ),
        ),
        (r) => emit(
          state.copyWith(
            popularState: RequestState.loaded,
            popularMovies: r,
          ),
        ),
      );
    });
    on<GetTopRatedMoviesEvent>((event, emit) async {
      /// i will call useCase
      final result = await topRatedMovieUseCase(NoParameters());
      // emit(
      //   MoviesState(
      //     popularState: RequestState.loaded,
      //   ),
      // );
      result.fold(
        (l) => emit(
          state.copyWith(
            popularState: RequestState.error,
            popularMessage: l.message,
          ),
        ),
        (r) => emit(
          state.copyWith(
            popularState: RequestState.loaded,
            popularMovies: r,
          ),
        ),
      );
    });
  }
}
