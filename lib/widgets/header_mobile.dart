import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/header_ddecoration.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, 
  this.onTap, 
  this.onMenuTap
  });

  final VoidCallback? onTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 60,
      decoration: EHeaderDecoration.decoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Text('EOD',
                    style: TextStyle(
            fontSize: 22,
            color: CustomColors.yellowSecondary,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
                    ),
                    ),
          ),
        Spacer(),
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: onMenuTap,

        ),
        SizedBox(width: 20,),
      ],
      ),
    );
  }
}