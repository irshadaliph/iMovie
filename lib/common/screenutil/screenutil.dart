import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

void appPrint(dynamic str) {
  if (kDebugMode) {
    print(str);
  }
}
