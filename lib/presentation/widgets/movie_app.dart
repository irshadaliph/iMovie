import 'package:flutter/material.dart';
import 'package:i_movie/presentation/journeys/home_screen.dart';
import 'package:i_movie/presentation/themes/theme_color.dart';
import 'package:i_movie/presentation/themes/theme_text.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init()
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
          primaryColor: AppColor.vulcan,
          scaffoldBackgroundColor: AppColor.vulcan,
          textTheme: ThemeText.getTextTheme(),
          appBarTheme: const AppBarTheme(elevation: 0)),
      home: const HomeScreen(),
    );
  }
}
