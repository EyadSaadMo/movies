import 'package:movies/movies/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation{
  RecommendationModel({required super.id,  super.backdropPath});
factory RecommendationModel.fromJson(Map<String,dynamic> json){
  return RecommendationModel(id: json['id'], backdropPath: json ['backdrop_path']?? '');
}
}
