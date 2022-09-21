import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_movie/common/constants/size_constants.dart';
import 'package:i_movie/presentation/blocs/movie_backdrop/movie_backdrop_bloc.dart';
import 'package:i_movie/common/extensions/string_extension.dart';

class MovieDataWidget extends StatelessWidget {
  const MovieDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBackdropBloc, MovieBackdropState>(
      builder: (context, state) {
        if (state is MovieBackdropChanged) {
          return Text(
            state.movie.title.intelliTrim(),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.fade,
            style:
                const TextStyle(color: Colors.white, fontSize: Sizes.dimen_24),
            selectionColor: Colors.white,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
