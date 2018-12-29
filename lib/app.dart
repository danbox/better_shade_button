import 'package:flutter/material.dart';
import 'package:better_shade_button/pages/home.dart';

class BetterShadeButton extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Better Shade Button',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(title: 'Better Shade Button'),
    );
  }
}
