import 'package:flutter/material.dart';
import 'package:question_solid_oop/questions/extensibility_in_multi_type_content/model/content_display_abstract.dart';
import 'package:question_solid_oop/questions/widget_safety_in_navigation/model/home_screen.dart';
import 'package:question_solid_oop/questions/widget_safety_in_navigation/model/navigation_button.dart';

void main() {
  //!extensibility_in_multi_type_content
  //runApp(ContentDisplay([ContentVideo("videoOne"), ContentVideo("videoTwo")]));
  //!Video
  // [
  //   ContentVideo("videoOne"), ContentVideo("videoTwo")
  // ]
  //=======================================================
  // [
  //!Text
  //ContentText("Ayman"), ContentText("Shwqi")
  //]
  //  ===================================================
  //!Images
  //This image   ===> https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQANPPtxV2IqMg3N5nDMhu8TqH9SBeMHNun4Q&s
  // ContentDisplay([
  //   ContentImage(
  //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQANPPtxV2IqMg3N5nDMhu8TqH9SBeMHNun4Q&s",
  //   ),
  //   ContentImage(
  //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQANPPtxV2IqMg3N5nDMhu8TqH9SBeMHNun4Q&s",
  //   ),
  // ]),
}

class ContentDisplay extends StatelessWidget {
  final List<ContentDisplayAbstract> items;
  const ContentDisplay(this.items, {super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: items.map((t) => t.build(context: context)).toList(),
        ),
      ),
    );
  }
}
