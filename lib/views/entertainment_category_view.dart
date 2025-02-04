import 'package:flutter/material.dart';

class EntertainmentView extends StatelessWidget {
  const EntertainmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Entertainment",
        style: TextStyle(
          color: Colors.amber,
          fontSize: 64,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
