import 'package:flutter/cupertino.dart';
import 'package:i_movie/domain/entities/movie_entitiy.dart';
import 'package:i_movie/presentation/journeys/movie_tabbed/movie_tab_card_widget.dart';

class MovieListViewBuilder extends StatelessWidget {
  final List<MovieEntity> movies;

  const MovieListViewBuilder({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: movies.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 14,
          );
        },
        itemBuilder: (context, index) {
          final MovieEntity movie = movies[index];
          return MovieTabCardWidget(
            movieId: movie.id,
            title: movie.title,
            posterPath: movie.posterPath,
          );
        },
      ),
    );
  }
}
