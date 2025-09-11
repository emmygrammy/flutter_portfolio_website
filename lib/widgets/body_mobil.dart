import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class BodyMobil extends StatelessWidget {
  const BodyMobil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.infinity,
                height:350,
                color: CustomColors.scaffoldbg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/emma.png',
                    width: 150,
                    height: 150,
                    ),
                    SizedBox(height: 20,),
                     Text("Hi \nI'm Emmanuel \nA Flutter Developer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.whitePrimary,
                          height: 1.5,
                     
                        ),
                        ),
                        SizedBox(
                          width: 190,
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
    );
  }
}