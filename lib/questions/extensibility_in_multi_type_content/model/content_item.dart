import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:question_solid_oop/model/content_display_abstract.dart';

class ContentText extends ContentDisplayAbstract {
  final String? text;

  ContentText(this.text);

  @override
  Widget build({required BuildContext context}) {
    return Text(text.toString());
  }
}

class ContentImage extends ContentDisplayAbstract {
  final String? image;

  ContentImage(this.image);

  @override
  Widget build({required BuildContext context}) {
    return Image.network(image.toString());
  }
}

class ContentVideo extends ContentDisplayAbstract {
  final String? video;

  ContentVideo(this.video);
  @override
  Widget build({required BuildContext context}) {
    //Here show video
    return Text(video.toString());
  }
}
