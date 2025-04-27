import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class TideChart extends StatelessWidget {
  final List<FlSpot> tideData;

  TideChart({required this.tideData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: true),
          titlesData: FlTitlesData(
            leftTitles: SideTitles(showTitles: true),
            bottomTitles: SideTitles(showTitles: true),
          ),
          borderData: FlBorderData(show: true),
          minX: 0,
          maxX: 24,
          minY: 0,
          maxY: 2, // Example: tide height in meters
          lineBarsData: [
            LineChartBarData(
              spots: tideData,
              isCurved: true,
              colors: [Colors.blue],
              barWidth: 4,
              isStrokeCapRound: true,
              belowBarData: BarAreaData(show: true, colors: [
                Colors.blue.withOpacity(0.3),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}