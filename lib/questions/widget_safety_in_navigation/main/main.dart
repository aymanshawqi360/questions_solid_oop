import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:question_solid_oop/questions/widget_safety_in_navigation/model/favorite_screen.dart';
import 'package:question_solid_oop/questions/widget_safety_in_navigation/model/home_screen.dart';
import 'package:question_solid_oop/questions/widget_safety_in_navigation/model/navigation_button.dart';

void main() {
  //!widget_safety_in_navigation
  runApp(
    MaterialApp(
      home: NavigationButton(
        screen: FavoriteScreen(),
        //  HomeScreen(),
        // SettingsScreen(), Dont can use Liskov Substitution Principle (LSP
      ),
    ),
  );
}
