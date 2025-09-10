import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
// import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/body_desktop.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
        key: scaffoldKey,
        endDrawer: constraints.maxWidth > desktopWidth ? null : DrawerMobile(),

        backgroundColor: CustomColors.scaffoldbg,
        body: ListView(
          children: [
            //? header
            constraints.maxWidth > desktopWidth
            ?HeaderDesktop(
              onTap: (){
                print('Home');
              },
            )
            :HeaderMobile(
              onTap: (){
                print('Home');
              },
              onMenuTap: (){
                print('Menu');
                 scaffoldKey.currentState!.openEndDrawer();
              },
      
            ),
      
  
               //? body( for introduction of the person )

               BodyDesktop(),

        
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
      },

    );

  }
}