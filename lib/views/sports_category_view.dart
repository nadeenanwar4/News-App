import 'package:flutter/material.dart';

class SportsView extends StatelessWidget {
  const SportsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Sports",
        style: TextStyle(
          color: Colors.amber,
          fontSize: 64,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
