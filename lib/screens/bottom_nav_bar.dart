import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/navigation_provider.dart';
import 'package:weather_app/screens/homepage/home_page.dart';
import 'package:weather_app/screens/search/search.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavigation bottomNavigation = Get.put(BottomNavigation());
    List<Widget> screens = [
      const HomePage(),
      const SearchPage(),
    ];
    return Obx(() => Scaffold(
          body: screens[bottomNavigation.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: bottomNavigation.currentIndex.value,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: TColors.yellowColor,
            unselectedItemColor: Colors.white,
            onTap: (index) {
              bottomNavigation.onSelectedIndex(index);
            },
            elevation: 0,
            backgroundColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                  label: '', icon: Icon(Iconsax.home, size: 25)),
              BottomNavigationBarItem(
                  label: '', icon: Icon(Icons.search, size: 25)),
            ],
          ),
        ));
  }
}

/*

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/screens/homepage/home_page.dart';
import 'package:weather_app/screens/search/search.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  bool selectedIndex = false;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomePage(),
      const SearchPage(),
    ];
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: TColors.yellowColor,
        unselectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            currentIndex = value;
            selectedIndex = true;
          });
        },
        elevation: 0,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              label: '', icon: Icon(Iconsax.home, size: 25)),
          BottomNavigationBarItem(
              label: '', icon: Icon(Icons.search, size: 25)),
        ],
      ),
    );
  }
}


 */