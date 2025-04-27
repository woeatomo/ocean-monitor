import 'package:flutter/material.dart';

class FishingTips extends StatelessWidget {
  final List<String> tips;

  FishingTips({required this.tips});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tips.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.fish, color: Colors.blue),
            title: Text(tips[index]),
          ),
        );
      },
    );
  }
}