import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skills_constant.dart';

class SkillContainer extends StatelessWidget {
  const SkillContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 700
                    ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for(int i=0;i<skills.length;i++)
                      Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: CustomColors.hintdark,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Icon(skills[i]['icon'],
                        color: CustomColors.yellowPrimary,
                        size: 16,
                        ),
                        title: Text(skills[i]['name'],
                        style: TextStyle(
                          fontSize: 18,
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