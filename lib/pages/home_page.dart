// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // Set the overall background color to white

      body: Column(
        children: [
          // Upper Brown Background Widget with Curved Bottom
          UpperBackgroundWidget(),

          // Lower White Background Widget
          LowerBackgroundWidget(),
        ],
      ),
    );
  }
}

class UpperBackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomCurveClipper(),
      child: Container(
        color: Colors.brown[400],
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text Halo
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo User !',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  // Notification
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 20,
              ),

              // Cat Image and Icons Row
              Row(
                children: [
                  // Kucing Image
                  Image.asset(
                    'assets/images/kucing.png', // Ganti dengan path gambar kucing Anda
                    width: 120, // Sesuaikan ukuran gambar kucing
                    height: 120,
                  ),

                  SizedBox(width: 20),

                  // Icons Row with Separators
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Keterisian Pakan Icon
                      Row(
                        children: [
                          Icon(
                            Icons.local_dining,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            '100%',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // Separator
                      SizedBox(width: 20),

                      // Suhu Kucing Icon
                      Row(
                        children: [
                          Icon(
                            Icons.thermostat_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            '70 °C', // Ubah dari "70 Derajat" menjadi "70 °C"
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // Separator
                      SizedBox(width: 20),

                      // Berat Badan Icon
                      Row(
                        children: [
                          Icon(
                            Icons.fitness_center,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            '15 kg',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LowerBackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Add content for the lower white background here
        ],
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50); // Start at the top-left
    path.quadraticBezierTo(size.width / 2, size.height, size.width,
        size.height - 50); // Define a quadratic Bézier curve for the bottom
    path.lineTo(size.width, 0); // Line back to the top-right
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
