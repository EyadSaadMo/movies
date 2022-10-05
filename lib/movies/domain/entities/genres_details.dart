import 'package:equatable/equatable.dart';

class GenresDetails extends Equatable{
  final int id;
  final String name;
  GenresDetails({required this.id,required this.name});

  @override
  // TODO: implement props
  List<Object?> get props => [id,name];

}