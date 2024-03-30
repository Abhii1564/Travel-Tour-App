import 'package:flutter/material.dart';
import 'package:travalingapp/Screens/accounts.dart';
import 'package:travalingapp/Screens/home_screen.dart';
import 'package:travalingapp/Screens/notifications.dart';
import 'package:travalingapp/Screens/searchbar.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  int bottomIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    SearchBarScreen(),
    NotificationScreen(),
    Accountscreen()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.cyan,
            currentIndex: bottomIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.doorbell), label: "Notification"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Accoount"),
            ],
            onTap: (val) {
              setState(() {
                bottomIndex = val;
              });
            },
          ),
          body: screens[bottomIndex]),
    );
  }
}
