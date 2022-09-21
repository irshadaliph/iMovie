import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_movie/domain/entities/movie_entitiy.dart';

part 'movie_backdrop_event.dart';
part 'movie_backdrop_state.dart';

class MovieBackdropBloc extends Bloc<MovieBackdropEvent, MovieBackdropState> {
  MovieBackdropBloc() : super(MovieBackdropInitial());

  @override
  Stream<MovieBackdropState> mapEventToState(
    MovieBackdropEvent event,
  ) async* {
    yield MovieBackdropChanged((event as MovieBackdropChangedEvent).movie);
  }
}
