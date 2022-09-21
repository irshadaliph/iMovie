import 'package:flutter/material.dart';
import 'package:i_movie/common/constants/size_constants.dart';
import 'package:i_movie/presentation/themes/theme_color.dart';

class Separator extends StatelessWidget {
  const Separator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.dimen_1,
      width: Sizes.dimen_80,
      padding: const EdgeInsets.only(
        top: Sizes.dimen_2,
        bottom: Sizes.dimen_6,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_1)),
        gradient: LinearGradient(
          colors: [
            AppColor.violet,
            AppColor.royalBlue,
          ],
        ),
      ),
    );
  }
}
