import 'package:flutter/material.dart';
import 'package:question_solid_oop/questions/widget_safety_in_navigation/model/screen.dart';

class NavigationButton extends StatelessWidget {
  final Screen screen;
  const NavigationButton({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => screen.navigate(context),
          child: Text('Navigate'),
        ),
      ),
    );
  }
}
