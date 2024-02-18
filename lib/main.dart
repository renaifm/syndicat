import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:syndicat/firebase_options.dart';
import 'package:syndicat/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:syndicat/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppPage.getLogin(),
    getPages: AppPage.routes,
  ));
}
