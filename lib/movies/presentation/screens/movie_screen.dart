import 'package:flutter/material.dart';
import 'package:movies/movies/data/dataSource/movie_remote_data_source.dart';
import 'package:movies/movies/data/repository/movie_repository.dart';
import 'package:movies/movies/domain/repository/base_movie_repository.dart';
import 'package:movies/movies/domain/usecases/get_now_playing_movie_usecase.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key key}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
  @override
  void initState() {
    super.initState();
    _getData();
  }
  void _getData() async{
    BaseMovieRemoteDataSource baseMovieRemoteDataSource = MovieRemoteDataSource();
    BaseMovieRepository movieRepository = MovieRepository(baseMovieRemoteDataSource);
    final result = GetNowPlayingMovieUseCase(movieRepository).execute();
    print(result);

  }
}
