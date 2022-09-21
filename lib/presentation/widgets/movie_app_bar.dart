import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common/constants/size_constants.dart';
import 'logo.dart';

class MovieAppBar extends StatelessWidget {
  const MovieAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).viewPadding.top,
        left: Sizes.dimen_16,
        right: Sizes.dimen_16,
      ),
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svgs/menu.svg',
              height: Sizes.dimen_20,
            ),
          ),
          const Expanded(child: Logo(height: Sizes.dimen_24)),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: Sizes.dimen_20,
            ),
          ),
        ],
      ),
    );
  }
}
