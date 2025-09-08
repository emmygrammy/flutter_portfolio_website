import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class EHeaderDecoration {
  static  BoxDecoration decoration = BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                CustomColors.bgLight1,
              ],
            ),
            borderRadius: BorderRadius.circular(100),
          );
}


