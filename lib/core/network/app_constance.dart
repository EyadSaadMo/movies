class AppConstance{
  static const baseUrl = 'https://api.themoviedb.org/3';
  static const appKey = 'f4bbe5a21f5109f960611b35c7785fa5';
  static const String getNowPlayingMoviePath = '$baseUrl/movie/now_playing?api_key=$appKey';
  static const String getPopularMoviePath = '$baseUrl/movie/popular?api_key=$appKey';
  static const String getTopRatedMoviePath = '$baseUrl/movie/top_rated?api_key=$appKey';
}