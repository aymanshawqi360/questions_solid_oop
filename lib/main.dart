import 'package:flutter/material.dart';
import 'package:question_solid_oop/model/content_display_abstract.dart';
import 'package:question_solid_oop/model/content_item.dart';

void main() {
  runApp(
    ContentDisplay([ContentVideo("videoOne"), ContentVideo("videoTwo")]),

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
  );
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

// class ContentItem {
//   String type;

//   String data;
//   ContentItem(this.type, this.data);
//   Widget build(BuildContext context) {
//     if (type == 'text') {
//       return Text(data);
//     } else if (type == 'image') {
//       return Image.network(data);
//     }
//     return Container(
//       child: Row(
//         children: [
//           Text(type, style: TextStyle(color: Colors.amber)),
//           Text(data, style: TextStyle(color: Colors.red)),
//         ],
//       ),
//     );
//   }
// }
