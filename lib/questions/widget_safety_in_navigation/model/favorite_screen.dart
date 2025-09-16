import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:question_solid_oop/questions/widget_safety_in_navigation/model/screen.dart';

class FavoriteScreen extends Screen {
  @override
  void navigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text("FavoriteScreen"))),
      ),
    );
  }
}
