import 'package:equatable/equatable.dart';

class Recommendation extends Equatable{
  final int id;
  final String? backdropPath;
  Recommendation({required this.id, this.backdropPath});

  @override
  // TODO: implement props
  List<Object?> get props => [id,backdropPath];

}