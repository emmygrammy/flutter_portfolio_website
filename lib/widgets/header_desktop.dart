import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/header_ddecoration.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key,
   this.onTap});
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            height:60,
             margin: EdgeInsets.symmetric(horizontal: 30),
             decoration: EHeaderDecoration.decoration,
                   
                    child: Row(
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
                        for (var i = 0; i < navItems.length; i++)
                        TextButton(
                          onPressed: (){}, 
                        child: Padding(
                          padding: const EdgeInsets.only(right: 60.0),
                          child: Text(navItems[i], 
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.whitePrimary,
                          ),),
                        ),
                        )
                    
                      ],
                    ),
              
            );
            
  }
}