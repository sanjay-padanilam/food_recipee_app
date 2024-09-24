import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';
import 'package:foodapp/view/bookmarkscreen/bookmarkscreen.dart';
import 'package:foodapp/view/create_recipee_screeen/create_recipee_Screen.dart';
import 'package:foodapp/view/homescreen/homescreen.dart';
import 'package:foodapp/view/profile_Screen/profile_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int selectedTab = 0;

  List screens = [
    HomeScreen(),
    Bookmarkscreen(),
    Container(color: Colors.blue),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: ColorConstants.primaryColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateRecipeeScreen(),
              ));
        },
        child: Icon(
          Icons.add,
          color: ColorConstants.mainWhite,
        ),
      ),
      body: screens[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (value) {
            selectedTab = value;
            setState(() {});
          },
          selectedItemColor: ColorConstants.primaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              activeIcon: Icon(Icons.bookmark),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              activeIcon: Icon(Icons.notifications),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: "",
            ),
          ]),
    );
  }
}
