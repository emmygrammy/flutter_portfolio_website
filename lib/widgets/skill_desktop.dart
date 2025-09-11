import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Skilldesktop extends StatelessWidget {
  const Skilldesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
               padding: EdgeInsets.symmetric(horizontal: 100,vertical: 30),  
                width: double.infinity,
                height:500,
                color: CustomColors.bgLight2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('My Skills',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.whitePrimary,
                    ),
                    ),
                    SizedBox(height: 30,),
              for (var i = 0; i < 4; i++)
                     Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CustomColors.hintdark,
                    
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.code,
                          color: CustomColors.whitePrimary,
                          ),
                          SizedBox(width: 30,),
                          Text('Flutter',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.whitePrimary,
                          ),
                          ),
                        ],
                      ),
                    ),

                    
                  ],
                ),
                SizedBox(height: 10,),
                  ],
                ),
                
              );
  }
}