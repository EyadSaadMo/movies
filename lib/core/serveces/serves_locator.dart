
import 'package:get_it/get_it.dart';
import 'package:movies/movies/controller/movie_details_bloc.dart';
import 'package:movies/movies/controller/movies_bloc.dart';
import 'package:movies/movies/data/dataSource/movie_remote_data_source.dart';
import 'package:movies/movies/data/repository/movies_repository.dart';
import 'package:movies/movies/domain/entities/movie_details.dart';
import 'package:movies/movies/domain/repository/base_movie_repository.dart';
import 'package:movies/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movies/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies/movies/domain/usecases/get_recommendation_usecase.dart';
import 'package:movies/movies/domain/usecases/get_top_rated_movies_usecase.dart';

final sl = GetIt.instance;
class ServicesLocator {
  void init(){
    /// Movies Bloc
    sl.registerFactory(() => MoviesBloc(sl(),sl(),sl() ));
    sl.registerFactory(() => MovieDetailsBloc(sl(),sl()));
    /// Use Case
     sl.registerLazySingleton(() => GetNowPlayingMovieUseCase(sl()));
     sl.registerLazySingleton(() => GetPopularMovieUseCase(sl()));
     sl.registerLazySingleton(() => GetTopRatedMovieUseCase(sl()));
     sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
     sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));
    /// Repository
    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));
    /// Data Source
     sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());
  }
}
/// registerFactory => when i make reload it will create new object
/// registerLazySingleton => create only one object
/// registerSingleton => create different object when i work on page