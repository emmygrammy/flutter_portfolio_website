import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/skill_container.dart';
import 'package:my_portfolio/widgets/skill_container_2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Skilldesktop extends StatelessWidget {
  const Skilldesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
      width: double.infinity,
      // height: 500,
      color: CustomColors.bgLight2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'My Skills',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
            ),
          ),
          SizedBox(height: 30),

          // ✅ First row of main skills
         
          GridView.count(
              crossAxisCount: 2, // ✅ 2 columns
              crossAxisSpacing: 10, // horizontal space between columns
              mainAxisSpacing: 10, 
              childAspectRatio: 8,
              // vertical space between rows
              shrinkWrap: true, // makes it fit inside a Column
              physics: NeverScrollableScrollPhysics(), // disable scroll inside parent
              children: [
                for (int i = 0; i < 4; i++)
                  SkillContainer(
                    skill: 'Android Developer',
                    icon: Icons.android,
                  ),
              ],
            ),

          
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       SkillContainer(skill: 'Android Developer', icon: Icons.android),
        //       SizedBox(width: 20),
        //       SkillContainer(skill: 'iOS Developer', icon: Icons.apple),
        //       SizedBox(width: 20),
        //       SkillContainer(skill: 'Web Developer', icon: Icons.web),
        //       SizedBox(width: 20),
        //       SkillContainer(skill: 'Desktop Developer', icon: Icons.flutter_dash),
        //     ],
        //   ),

        //   SizedBox(height: 40),

        //   // ✅ Wrapped smaller skills
        //   Wrap(
        //     spacing: 20, // space between items horizontally
        //     runSpacing: 20, // space between rows if wrapped
        //     alignment: WrapAlignment.center,
        //     children: [
        //       for (int i = 0; i < 10; i++)
        //         SkillContainer2(
        //           skill: 'Flutter',
        //           icon: Icon(
        //             FontAwesomeIcons.code,
        //             color: CustomColors.yellowPrimary,
        //             size: 16,
        //           ),
        //         ),
        //     ],
        //   ),
        ],
      ),
    );
  }
}
