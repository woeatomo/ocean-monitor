import 'package:flutter/material.dart';
import '../widgets/tide_chart.dart';
import 'package:fl_chart/fl_chart.dart';

class GraphScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Contoh data tide (pasang surut)
    final tideData = [
      FlSpot(0, 0.5),
      FlSpot(4, 1.2),
      FlSpot(8, 0.8),
      FlSpot(12, 1.5),
      FlSpot(16, 1.0),
      FlSpot(20, 0.7),
      FlSpot(24, 0.5),
    ];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tide Chart (Pasang Surut)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TideChart(tideData: tideData),
          ],
        ),
      ),
    );
  }
}