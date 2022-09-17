import 'package:dartz/dartz.dart';
import 'package:i_movie/domain/entities/app_error.dart';
import 'package:i_movie/domain/entities/movie_entitiy.dart';
import 'package:i_movie/domain/entities/no_params.dart';
import 'package:i_movie/domain/usecases/usecase.dart';
import '../../domain/repositoris/movie_repository.dart';

class GetTrending extends UseCase<List<MovieEntity>,NoParams> {
  final MovieRepository repository;

  GetTrending(this.repository);
  @override
  // ignore: avoid_renaming_method_parameters
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repository.getTrending();
  }
}
