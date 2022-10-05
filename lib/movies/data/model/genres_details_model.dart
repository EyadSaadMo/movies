import 'dart:convert';

import '../../domain/entities/genres_details.dart';

class GenresDetailsModel extends GenresDetails {
  GenresDetailsModel({required super.id, required super.name});
  factory GenresDetailsModel.fromJson(Map<String, dynamic> json) {
    return GenresDetailsModel(id: json['id'], name: json['name']);
  }
}
