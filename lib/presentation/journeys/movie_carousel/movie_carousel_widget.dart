import 'package:flutter/material.dart';
import 'package:i_movie/domain/entities/movie_entitiy.dart';
import 'package:i_movie/presentation/journeys/movie_carousel/movie_page_view.dart';
import 'package:i_movie/presentation/widgets/movie_app_bar.dart';

class MovieCarouselWidget extends StatelessWidget {
  final List<MovieEntity> movies;
  final int defaultIndex;

  const MovieCarouselWidget(
      {super.key, required this.movies, required this.defaultIndex})
      : assert(defaultIndex >= 0, 'defaulIndet can Not Be Letehn Zero');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MovieAppBar(),
        MoviePageView(
          movies: movies,
          initialPage: defaultIndex,
        ),
      ],
    );
  }
}
