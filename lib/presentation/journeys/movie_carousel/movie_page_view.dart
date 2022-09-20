import 'package:flutter/material.dart';
import 'package:i_movie/domain/entities/movie_entitiy.dart';
import 'package:i_movie/presentation/journeys/movie_carousel/movie_card_widget.dart';
import '../../../../common/constants/size_constants.dart';
import '../../../../common/extensions/size_extensions.dart';
import '../../../../common/screenutil/screenutil.dart';

class MoviePageView extends StatefulWidget {
  final List<MovieEntity> movies;
  final int initialPage;

  const MoviePageView(
      {super.key, required this.movies, required this.initialPage})
      : assert(initialPage >= 0, 'initialPage cannot be less than 0');

  @override
  // ignore: library_private_types_in_public_api
  _MoviePageViewState createState() => _MoviePageViewState();
}

class _MoviePageViewState extends State<MoviePageView> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: widget.initialPage,
      keepPage: false,
      viewportFraction: 0.7,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Sizes.dimen_10.h),
      height: ScreenUtil.screenHeight! * 0.35,
      child: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          final MovieEntity movie = widget.movies[index];
          return MovieCardWidget(
              movieId: movie.id, posterPath: movie.posterPath);
        },
        pageSnapping: true,
        itemCount: widget.movies.length,
        onPageChanged: (index){},
      ),
    );
  }
}
