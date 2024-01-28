import 'package:get/get.dart';
import 'package:syndicat/navbar/navbar.dart';
import 'package:syndicat/pages/home_page.dart';
import 'package:syndicat/pages/info_page.dart';
import 'package:syndicat/pages/jadwal_page.dart';
import 'package:syndicat/pages/login_page.dart';
import 'package:syndicat/pages/profile_page.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => const NavBAr()),
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: jadwal, page: () => const JadwalPage()),
    GetPage(name: info, page: () => const InfoPage()),
    GetPage(name: profile, page: () => const ProfilePage()),
    GetPage(
        name: AppPage.getLogin(),
        page: () => const LoginPage()), // Tambahkan ini
  ];

  static getNavBar() => navbar;
  static getHome() => home;
  static getJadwal() => jadwal;
  static getInfo() => info;
  static getProfile() => profile;

  static String navbar = '/';
  static String home = '/home';
  static String jadwal = '/note';
  static String info = '/chart';
  static String profile = '/setting';
  static getLogin() => '/login';
}
