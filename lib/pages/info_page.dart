import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Berat Badan Kucing',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(show: false),
                        titlesData: FlTitlesData(show: false),
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(color: Colors.white),
                        ),
                        minX: 0,
                        maxX: 7,
                        minY: 0,
                        maxY: 10,
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              FlSpot(0, 3),
                              FlSpot(1, 5),
                              FlSpot(2, 7),
                              FlSpot(3, 2),
                              FlSpot(4, 6),
                              FlSpot(5, 4),
                              FlSpot(6, 8),
                              FlSpot(7, 5),
                            ],
                            isCurved: true,
                            colors: [Colors.blue],
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Suhu Kucing',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(show: false),
                        titlesData: FlTitlesData(show: false),
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(color: Colors.white),
                        ),
                        minX: 0,
                        maxX: 7,
                        minY: 0,
                        maxY: 40,
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              FlSpot(0, 25),
                              FlSpot(1, 30),
                              FlSpot(2, 28),
                              FlSpot(3, 35),
                              FlSpot(4, 32),
                              FlSpot(5, 29),
                              FlSpot(6, 27),
                              FlSpot(7, 31),
                            ],
                            isCurved: true,
                            colors: [Colors.orange],
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Frekuensi Makan Kucing',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(show: false),
                        titlesData: FlTitlesData(show: false),
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(color: Colors.white),
                        ),
                        minX: 0,
                        maxX: 7,
                        minY: 0,
                        maxY: 5,
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              FlSpot(0, 2),
                              FlSpot(1, 1),
                              FlSpot(2, 4),
                              FlSpot(3, 2),
                              FlSpot(4, 3),
                              FlSpot(5, 1),
                              FlSpot(6, 4),
                              FlSpot(7, 2),
                            ],
                            isCurved: true,
                            colors: [Colors.green],
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
