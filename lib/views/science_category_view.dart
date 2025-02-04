import 'package:flutter/material.dart';

class ScienceView extends StatelessWidget {
  const ScienceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Science",
        style: TextStyle(
          color: Colors.amber,
          fontSize: 64,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
