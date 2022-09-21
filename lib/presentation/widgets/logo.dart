import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double height;
  const Logo({super.key, required this.height})
      // ignore: unnecessary_null_comparison
      : assert(height != null, 'height must not be null'),
        assert(height > 0, 'height should be greater than 0');
  // super();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/pngs/logo.png',
      color: Colors.white,
      height: height,
    );
  }
}
