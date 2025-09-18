import 'package:flutter/material.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/presentation/page/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
