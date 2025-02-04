import 'package:flutter/material.dart';

class HealthView extends StatelessWidget {
  const HealthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Health",
        style: TextStyle(
          color: Colors.amber,
          fontSize: 64,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
