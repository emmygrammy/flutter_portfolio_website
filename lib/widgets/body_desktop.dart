import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                padding: EdgeInsets.symmetric(horizontal: 220),
                width: double.infinity,
                height:450,
                color: CustomColors.scaffoldbg,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children: [
                        Text("Hi \nI'm Emmanuel \nA Flutter Developer",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.whitePrimary,
                          height: 1.5,
                        ),
                        ),
                        SizedBox(
                          width: 250,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: (){}, 
                            
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColors.yellowPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Text('Get in touch',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            ),
                        ),  

                      ],
                    ),
                    Spacer(),
                    Image.asset('assets/images/emma.png',
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.6,
                    ),
                  ],
                ),
                );
  }
}