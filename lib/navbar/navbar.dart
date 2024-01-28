import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syndicat/controller/controller.dart';
import 'package:syndicat/pages/home_page.dart';
import 'package:syndicat/pages/info_page.dart';
import 'package:syndicat/pages/jadwal_page.dart';
import 'package:syndicat/pages/profile_page.dart';

class NavBAr extends StatefulWidget {
  const NavBAr({super.key});

  @override
  State<NavBAr> createState() => _NavBArState();
}

class _NavBArState extends State<NavBAr> {
  final controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomePage(),
            JadwalPage(),
            InfoPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.brown.shade200,
          unselectedItemColor: Colors.brown.shade400,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          items: [
            bottomBarItem(Icons.home, 'Home'),
            bottomBarItem(Icons.schedule, 'Jadwal'),
            bottomBarItem(Icons.stacked_line_chart, 'Info'),
            bottomBarItem(Icons.person, 'Profil'),
          ],
        ),
      );
    });
  }
}

BottomNavigationBarItem bottomBarItem(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
