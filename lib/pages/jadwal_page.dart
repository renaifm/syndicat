// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class JadwalPage extends StatefulWidget {
  const JadwalPage({super.key});

  @override
  State<JadwalPage> createState() => _JadwalPageState();
}

class _JadwalPageState extends State<JadwalPage> {
  // Contoh data jadwal
  final List<Map<String, String>> jadwalList = [
    {'Jadwal': 'Jadwal 1', 'Waktu': 'Pukul 07.00 WIB'},
    {'Jadwal': 'Jadwal 2', 'Waktu': 'Pukul 12.00 WIB'},
    // Tambahkan jadwal lainnya sesuai kebutuhan
  ];

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
      body: ListView.builder(
        itemCount: jadwalList.length,
        itemBuilder: (context, index) {
          final jadwal = jadwalList[index];
          return Card(
            color: Colors.white, // Warna background card
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(
                jadwal['Jadwal'] ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                jadwal['Waktu'] ?? '',
                style: TextStyle(fontSize: 16),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan aksi yang ingin dilakukan ketika FAB ditekan
          // Misalnya, pindah ke halaman tambahan atau menambahkan jadwal baru
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.brown,
      ),
    );
  }
}
