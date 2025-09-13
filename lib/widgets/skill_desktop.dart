import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/skill_container.dart';
import 'package:my_portfolio/widgets/skill_container_2.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(50, 20, 50, 20),

      width: double.infinity,
      color: CustomColors.bgLight2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text('My Skills',
          style: TextStyle(
            letterSpacing: 2,
            wordSpacing: 2,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: CustomColors.whitePrimary,
          ),
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              //? Job roles
             SkillContainer(),
              
              SizedBox(width: 40,),

              //?programming languages
              SkillContainer2(),
            ],
          ),

        ],
      ),
    );
  }
}