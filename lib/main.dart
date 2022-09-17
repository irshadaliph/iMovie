import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
// import 'package:http/http.dart';
// import 'package:i_movie/data/core/api_client.dart';
// import 'package:i_movie/data/data_sources/movie_remote_data_source.dart';
// import 'package:i_movie/data/repositories/movie_repository_impl.dart';
import 'package:i_movie/domain/entities/app_error.dart';
import 'package:i_movie/domain/entities/movie_entitiy.dart';
import 'package:i_movie/domain/entities/no_params.dart';
// import 'package:i_movie/domain/repositories/movie_repository.dart';
import 'package:i_movie/domain/usecases/get_trending.dart';
import 'package:pedantic/pedantic.dart';
// ignore: library_prefixes
import 'di/get_it.dart' as getIt;

void appPrint(dynamic str) {
  if (kDebugMode) {
    print(str);
  }
}

void main() async {
  unawaited(getIt.init());
  // ApiClient apiClient = ApiClient(Client());
  // MovieRemoteDataSource dataSource =
  //     MovieRemoteDataSourceImpl(apiClient);
  // dataSource.getTrending();
  // dataSource.getPopular();
  // dataSource.getPlayingNow();
  // dataSource.getComingSoon();
  // MovieRepository movieRepository = MovieRepositoryImpl(dataSource);
  // movieRepository.getTrending;
  // GetTrending getTranding = GetTrending(movieRepository);
  // getTranding();
  GetTrending getTranding = getIt.getItInstance<GetTrending>();
  final Either<AppError, List<MovieEntity>> eitherResponse =
      await getTranding(NoParams());
  eitherResponse.fold((l) {
    if (kDebugMode) {
      print('error');
      print(l);
    }
  }, (r) {
    if (kDebugMode) {
      print('List Of Movie');
      print(r);
    }
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container() //const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
