import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Text(
        "اردو میں ٹائپ کریں",
        style: TextStyle(
            fontSize: 40, color: Colors.blueGrey, fontWeight: FontWeight.bold),
      )),
    );
  }
}
