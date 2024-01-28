// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syndicat/routes/routes.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade400,
      appBar: AppBar(
        title: Text(
          'Halo User',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                  'assets/images/kucing-profil.jpg'), // Ganti dengan path foto profil Anda
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman profil
                // Gantilah dengan navigasi sesuai dengan kebutuhan Anda
                // Contoh menggunakan GetX
                // Get.toNamed(AppPage.getProfile());
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.brown, // Warna latar belakang
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Ubah sesuai kebutuhan
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 30), // Sesuaikan dengan ukuran yang diinginkan
              ),
              child: Text(
                'Profil',
                style: TextStyle(
                  color: Colors.white, // Warna teks
                  fontSize: 18, // Ukuran teks
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi kembali ke halaman login setelah logout
                Get.offAndToNamed(AppPage.getLogin());
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.brown, // Warna latar belakang
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Ubah sesuai kebutuhan
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 30), // Sesuaikan dengan ukuran yang diinginkan
              ),
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white, // Warna teks
                  fontSize: 18, // Ukuran teks
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
