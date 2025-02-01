import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/error.jpeg"),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.blueAccent,
          ),
        ),
        Text(
          "hdgcsssssssssssssssssssssssssssssssajkachsVCWKYGDIQWYDGEGHECJKLDSBLLLLLLLCGIUEWCFHWELVUIWHVWvlu",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          "hdgcsssssssssssssssssssssssssssssssajkachsVCWKYGDIQWYDGEGHECJKLDSBLLLLLLLCGIUEWCFHWELVUIWHVWvlu",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
