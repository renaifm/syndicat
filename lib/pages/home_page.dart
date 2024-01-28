// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/syndicat-logo.png',
                width: 200,
                height: 400,
              ),
              Text(
                'Status',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20), // Jarak antara foto dan ikon/tombol
              Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon Keterisian
                    _buildStatusColumn(Icons.local_dining, '50%'),
                    SizedBox(width: 20),
                    // Icon Suhu Kucing
                    _buildStatusColumn(Icons.thermostat_outlined, '23°C'),
                    SizedBox(width: 20),
                    // Icon Berat Kucing
                    _buildStatusColumn(Icons.fitness_center, '15Kg'),
                  ],
                ),
              ),
              SizedBox(height: 50), // Jarak antara ikon dan tombol
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Tombol Feed
                  _buildActionButton(Icons.pets, 'Feed'),
                  SizedBox(width: 20),
                  // Tombol Health
                  _buildActionButton(Icons.favorite, 'Health'),
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _buildStatusColumn(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.brown, // Warna ikon coklat
          size: 30,
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
            color: Colors.brown,
          ),
        ),
      ],
    );
  }

  Column _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white, // Warna background button putih
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: Colors.brown, // Warna ikon coklat
            size: 30,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
