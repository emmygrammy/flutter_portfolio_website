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
                      Chip(
                        backgroundColor: CustomColors.hintdark,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),

                        avatar: Icon(programmingLanguages[i]['icon'],
                        color: CustomColors.yellowSecondary,
                        size: 10,
                        ),
                        label: Text(programmingLanguages[i]['name'],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.whitePrimary,
                        ),
                        ),
                      ),
                    ],
                  
                  ),
                ),
              );
  }
}