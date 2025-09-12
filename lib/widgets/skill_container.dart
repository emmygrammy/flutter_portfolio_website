import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class SkillContainer extends StatelessWidget {
  const SkillContainer({super.key,required this.skill,required this.icon});
  final String skill;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CustomColors.hintdark,
                    
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(icon,
                          color: CustomColors.yellowPrimary,
                          size: 16,
    
                          ),
                          SizedBox(width: 30,),
                          Text(skill,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.whitePrimary,
                          ),
                          ),
                        ],
                      ),
                    );
  }
}