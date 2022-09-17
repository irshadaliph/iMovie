import 'package:i_movie/data/models/movie_model.dart';

class MoviesResultModel {
  late List<MovieModel> movies;

  MoviesResultModel({results});

  MoviesResultModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      movies = <MovieModel>[];
      json['results'].forEach((v) {
        movies.add(MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    // ignore: unnecessary_null_comparison
    if (movies != null) {
      data['results'] = movies.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
