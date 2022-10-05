class ApiConstance{
  static const baseUrl = 'https://api.themoviedb.org/3';
  static const apiKey = 'f4bbe5a21f5109f960611b35c7785fa5';
  static const String getNowPlayingMoviePath = '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const String getPopularMoviePath = '$baseUrl/movie/popular?api_key=$apiKey';
  static const String getTopRatedMoviePath = '$baseUrl/movie/top_rated?api_key=$apiKey';
  static  String movieDetailsPath(int movieId ) => '$baseUrl/movie/$movieId?api_key=$apiKey';
  static  String recommendationPath(int movieId ) => '$baseUrl/movie/$movieId/recommendations?api_key=$apiKey';
   static const String baseUrlImage = 'https://image.tmdb.org/t/p/w500';
   static String imageUrl (String path) => '$baseUrlImage$path';
}