import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:syndicat/routes/routes.dart';
// import 'package:syndicat/pages/login_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppPage.getLogin(),
    getPages: AppPage.routes,
  ));
}
