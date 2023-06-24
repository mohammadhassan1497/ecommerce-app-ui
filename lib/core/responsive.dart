import 'package:flutter/material.dart';

class Responsive {
  // width and height of the screen
  static double screenWidth(context) => MediaQuery.of(context).size.width;
  static double screenHeight(context) => MediaQuery.of(context).size.height;
}
