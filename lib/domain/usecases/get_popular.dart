import 'package:dartz/dartz.dart';
import 'package:i_movie/domain/entities/app_error.dart';
import 'package:i_movie/domain/entities/movie_entitiy.dart';
import 'package:i_movie/domain/usecases/usecase.dart';
import '../../domain/repositoris/movie_repository.dart';
import '../entities/no_params.dart';

class GetPopular extends UseCase<List<MovieEntity>,NoParams> {
  final MovieRepository repository;

  GetPopular(this.repository);
  @override
  // ignore: avoid_renaming_method_parameters
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repository.getPopular();
  }
}
