import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_1/screen/campaigns.dart';
import 'package:project_1/screen/home.dart';
import 'package:project_1/screen/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  Color theme = const Color.fromARGB(255, 11, 50, 82);
  int _selectedIndex = 0;
  void _changeItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /////
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static List<Widget> _bottomBarOptions = <Widget> [
    //2sma2 al saf7at yli r7 ynt2l 3leha
    Home(), //Home
    Campaign(),
    Profile(),
    // Search(),
    // MyAddNewProductPage(),
    // Category(),
    // Profile(),
  ];
  //////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: theme,
        haptic: true, // haptic feedback
        tabBorderRadius: 10,
        // tabActiveBorder:
        //     Border.all(color: Colors.black, width: 1), // tab button border
       /* tabBorder:
            Border.all(color: Colors.grey, width: 1), // tab button border*/
        // tabShadow: [
        //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
        // ], // tab button shadow
        curve: Curves.easeOutExpo, // tab animation curves
        duration:const Duration(milliseconds: 900), // tab animation duration
        gap: 8, // the tab button gap between icon and text
        color: Colors.white, // unselected icon color
        activeColor: Colors.lightGreen, // selected icon and text color
        // tabBackgroundColor:
        //     Colors.purple.withOpacity(0.1), // selected tab background color

        rippleColor:const  Color.fromARGB(
            255, 43, 43, 43), // tab button ripple color when pressed
        //hoverColor: Colors.blue, // tab button hover color
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 5), // navigation bar padding

        tabs:const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.campaign,
            text: 'Campaign',
          ),
          GButton(
            icon: Icons.message,
            text: 'Reports',
          ),
          GButton(
            icon: Icons.person,
            text: 'profile',
          ),
        ],
        selectedIndex: _selectedIndex,

        onTabChange: _changeItem,
      ),
      body: _bottomBarOptions.elementAt(_selectedIndex),

      //body: _BottomBar.elementAt(_selectedIndex),
    );
  }
}
