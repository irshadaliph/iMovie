import 'package:dartz/dartz.dart';
import 'package:i_movie/data/data_sources/movie_remote_data_source.dart';
import 'package:i_movie/data/models/movie_model.dart';
import 'package:i_movie/domain/entities/app_error.dart';
import 'package:i_movie/domain/entities/movie_entitiy.dart';
import 'package:i_movie/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource remoteDataSource;
  MovieRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppError, List<MovieModel>>> getTrending() async {
    try {
      final movies = await remoteDataSource.getTrending();
      return Right(movies);
    } on Exception {
      return const Left(AppError('Somthing Worng'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getComingSoon() async {
    try {
      final movies = await remoteDataSource.getComingSoon();
      return Right(movies);
    } on Exception {
      return const Left(AppError('Somthing Worng'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPlayingNow() async {
    try {
      final movies = await remoteDataSource.getPlayingNow();
      return Right(movies);
    } on Exception {
      return const Left(AppError('Somthing Worng'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPopular() async {
    try {
      final movies = await remoteDataSource.getPopular();
      return Right(movies);
    } on Exception {
      return const Left(AppError('Somthing Worng'));
    }
  }
}
