import 'package:flutter/material.dart';

class TechnologyView extends StatelessWidget {
  const TechnologyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Technology",
        style: TextStyle(
          color: Colors.amber,
          fontSize: 64,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
