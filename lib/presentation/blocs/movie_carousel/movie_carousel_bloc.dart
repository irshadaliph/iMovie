// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:i_movie/domain/entities/movie_entitiy.dart';
import 'package:i_movie/domain/entities/no_params.dart';
import 'package:i_movie/domain/usecases/get_trending.dart';
part 'movie_carousel_event.dart';
part 'movie_carousel_state.dart';

class MovieCarouselBloc extends Bloc<MovieCarouselEvent, MovieCarouselState> {
  final GetTrending getTrending;
  MovieCarouselBloc({
    required this.getTrending,
  }) : super(MovieCarouselInitial()) {
    on<MovieCarouselEvent>((event, emit) async {
      if (event is CarouselLoadEvent) {
        final moviesEither = await getTrending(NoParams());
        moviesEither.fold((l) => MovieCarouselError(), (movies) {
          return MovieCarouselLoaded(
              movies: movies, defaultIndex: event.defaultIndex);
        });
      }
    });
  }
}
