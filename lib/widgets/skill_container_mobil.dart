import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skills_constant.dart';

class SkillContainerMobil extends StatefulWidget {
  const SkillContainerMobil({super.key});

  @override
  State<SkillContainerMobil> createState() => _SkillContainerMobilState();
}

class _SkillContainerMobilState extends State<SkillContainerMobil> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        for (var i = 0; i < skills.length; i++)

        Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: CustomColors.hintdark,
          borderRadius: BorderRadius.circular(5),
        
        ),
         child:ListTile(
          leading: Icon(skills[i]['icon'],
          color: CustomColors.yellowSecondary,
          size: 16,
      
          ),
          title: Text(skills[i]['name'],

          style: TextStyle(
            color: CustomColors.whitePrimary,
            fontWeight: FontWeight.bold,
            fontSize: 18,
      
          ),
          
          )
      
      ),
      ),
      ]
    );
  }
}