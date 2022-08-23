import 'dart:math';
import 'package:dio/dio.dart';
import 'package:movies/core/error/exception.dart';
import 'package:movies/core/network/app_constance.dart';
import 'package:movies/core/network/error_message_model.dart';
import 'package:movies/movies/data/model/movie_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(AppConstance.getNowPlayingMoviePath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from(response.data['result'] as List);
      //.map((e) => MovieModel.fromJson(e))
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final response = await Dio().get(AppConstance.getPopularMoviePath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from(response.data['result'] as List);
      //.map((e) => MovieModel.fromJson(e))
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final response = await Dio().get(AppConstance.getTopRatedMoviePath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from(response.data['result'] as List);
      //.map((e) => MovieModel.fromJson(e))
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
