import 'dart:convert';

import 'package:http/http.dart';
import 'package:i_movie/data/core/api_client.dart';
import 'package:i_movie/data/core/api_constants.dart';
import 'package:i_movie/data/models/movie_model.dart';
import 'package:i_movie/data/models/movies_result_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getTrending();
  Future<List<MovieModel>> getPopular();
  Future<List<MovieModel>> getPlayingNow();
  Future<List<MovieModel>> getComingSoon();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final ApiClient _client;
  final Client _client2;
  MovieRemoteDataSourceImpl(this._client, this._client2);

  @override
  Future<List<MovieModel>> getTrending() async {
    final response = await _client.get('trending/movie/day');
    final movies = MoviesResultModel.fromJson(response).movies;
    return movies;
  }

  @override
  Future<List<MovieModel>> getPlayingNow() async {
    final response = await _client.get('movie/upcoming');
    final movies = MoviesResultModel.fromJson(response).movies;
    return movies;
  }

  @override
  Future<List<MovieModel>> getComingSoon() async {
    final response = await _client.get('movie/now_playing');
    final movies = MoviesResultModel.fromJson(response).movies;
    return movies;
  }

  @override
  Future<List<MovieModel>> getPopular() async {
    var url = Uri.parse(
        '${ApiConstants.BASE_URL}movie/popular?api_key=${ApiConstants.API_KEY}');
    final response = await _client2.get(url, headers: {
      'Content-Type': 'application/jason',
    });

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final movies = MoviesResultModel.fromJson(responseBody).movies;
      // ignore: avoid_print
      print(movies);
      return movies;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}




// var url = Uri.parse(
    //     '${ApiConstants.BASE_URL}trending/movie/day?api_key=${ApiConstants.API_KEY}');
    // final response = await _client.get(url, headers: {
    //   'Content-Type': 'application/jason',
    // });

    // if (response.statusCode == 200) {
    //   final responseBody = json.decode(response.body);
    //   final movies = MoviesResultModel.fromJson(responseBody).movies;
    //   // ignore: avoid_print
    //   print(movies);
    //   return movies;
    // } else {
    //   throw Exception(response.reasonPhrase);
    // }