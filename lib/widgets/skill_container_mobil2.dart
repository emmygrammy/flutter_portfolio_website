import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skills_constant.dart';

class SkillContainerMobil2 extends StatefulWidget {
  const SkillContainerMobil2({super.key});

  @override
  State<SkillContainerMobil2> createState() => _SkillContainerMobil2State();
}

class _SkillContainerMobil2State extends State<SkillContainerMobil2> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 2,
      runSpacing: 0,
      children: [
        for(var i = 0; i < programmingLanguages.length; i++)
        Chip(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: CustomColors.hintdark,
          avatar: Icon(
            programmingLanguages[i]['icon'],
            color: CustomColors.yellowSecondary,
            size: 12,
          ),
          label: Text(
            programmingLanguages[i]['name'],
            style: TextStyle(
              color: CustomColors.whitePrimary,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        ),
      ]
    );
  }
}