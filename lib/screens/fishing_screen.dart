import 'package:flutter/material.dart';
import '../widgets/fishing_tips.dart';

class FishingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Contoh data tips memancing
    final fishingTips = [
      "Gunakan umpan alami untuk hasil terbaik.",
      "Hindari memancing saat gelombang tinggi.",
      "Waktu terbaik untuk memancing adalah saat pasang naik.",
      "Gunakan kail yang sesuai dengan jenis ikan target.",
    ];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Fishing Tips",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(child: FishingTips(tips: fishingTips)),
          ],
        ),
      ),
    );
  }
}