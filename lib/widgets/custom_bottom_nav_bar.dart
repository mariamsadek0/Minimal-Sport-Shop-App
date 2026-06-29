import 'package:flutter/material.dart';
import 'package:minimal_sport_shop_app/features/profile.screen.dart';
import 'package:minimal_sport_shop_app/features/settingscreen.dart';
import '../features/homescreen.dart';
import '../features/shopscreen.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,

      onTap: (index) {
        if (index == currentIndex) return;

        Widget screen;

        switch (index) {
          case 0:
            screen = const HomeScreen();
            break;

          case 1:
            screen = ShopScreen();
            break;

          case 2:
            screen = const ProfileScreen();
            break;

          case 3:
            screen = const SettingsScreen();
            break;

          default:
            screen = const HomeScreen();
        }

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: "Home",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          activeIcon: Icon(Icons.shopping_bag),
          label: "Shop",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: "Profile",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          activeIcon: Icon(Icons.settings),
          label: "Settings",
        ),
      ],
    );
  }
}
