import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColors.scaffoldbg,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
           for(int i = 0; i < navItems.length; i++)
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                onTap: (){
                  print(navItems[i]);
                  Navigator.pop(context);
                },

                title: Text(navItems[i], 
                style: TextStyle(
                  color: CustomColors.whitePrimary, 
                  fontSize: 16, 
                  fontWeight: FontWeight.w500),),
                selected: i == 0,
                selectedColor: CustomColors.yellowSecondary,
                leading: Icon(navIcons[i]),
              )
          ],
        ),
      );
  }
}