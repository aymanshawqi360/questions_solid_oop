import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:question_solid_oop/questions/widget_safety_in_navigation/model/screen.dart';

class HomeScreen extends Screen {
  @override
  void navigate(BuildContext context) {
    print('Navigating to home');
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const Scaffold(body: Center(child: Text("HomeScreen"))),
      ),
    );
  }
}
