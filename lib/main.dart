import 'package:flutter/material.dart';
import 'package:inr_pro/login/animationScreen.dart';

void main() {
  runApp(const maindart());
}

class maindart extends StatelessWidget {
  const maindart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: animationScreen(),
      ),
    );
  }
}
