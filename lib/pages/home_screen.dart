import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffoldbg,
      body: ListView(
        children: [
          //? header
          Container(
            width: double.infinity,
            height:60,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      CustomColors.bgLight1,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),

                child: Row(
                  children: [
                    Text('EOD',
                    style: TextStyle(
                      fontSize: 22,
                      color: CustomColors.yellowSecondary,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                    ),
                    Spacer(),
                    for (var i = 0; i < navItems.length; i++)
                    TextButton(
                      onPressed: (){}, 
                    child: Padding(
                      padding: const EdgeInsets.only(right: 60.0),
                      child: Text(navItems[i], 
                      style: TextStyle(
                        fontSize: 16,
                        color: CustomColors.whitePrimary,
                      ),),
                    ),
                    )
                
                  ],
                ),
              ),
            ),
            ),
      
             //? about
             Container(
              width: double.infinity,
              height:500,
              color: Colors.white,
              child: Center(
                child: Text('About',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
                ),
              ),
              ),
      
              //? projects
              Container(
              width: double.infinity,
              height:500,
              color: Colors.blueGrey,
              child: Center(
                child: Text('Projects',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
                ),
              ),
              ),
      
              //? contact
              Container(
              width: double.infinity,
              height:500,
              color: Colors.white,
              child: Center(
                child: Text('Contact',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
                ),
              ),
              ),
      
              //? footer
              Container(
              width: double.infinity,
              height:500,
              color: Colors.blueGrey,
              child: Center(
                child: Text('Footer',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
                ),
              ),
              ),
          ]
        ),
      );
  }
}