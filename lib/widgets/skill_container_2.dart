import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class SkillContainer2 extends StatelessWidget {
  const SkillContainer2({super.key,required this.skill,required this.icon});
  final String skill;
  final Widget icon;
  


  @override
  Widget build(BuildContext context) {
    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      width: MediaQuery.of(context).size.width*0.09,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: CustomColors.hintdark,
                    
                      ),
                      child: Row(
                        children: [
                          icon,
                          // color: CustomColors.yellowPrimary,
                          // size: 16,
                          // ),
                          SizedBox(width: 10,),
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