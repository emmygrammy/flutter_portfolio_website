import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skills_constant.dart';

class SkillContainer2 extends StatelessWidget {
  const SkillContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 700
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for(int i=0;i<programmingLanguages.length;i++)
                      Container(
                      padding: EdgeInsets.symmetric(horizontal: 1,),
                      width:150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: CustomColors.hintdark,
                      ),
                      child:ListTile(
                        leading: Icon(programmingLanguages[i]['icon'],
                        color: CustomColors.yellowSecondary,
                        size: 10,
                        ),
                        title: Text(programmingLanguages[i]['name'],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.whitePrimary,
                        ),
                        ),
                      ),
                    
                    ),
                    ],
                  
                  ),
                ),
              );
  }
}