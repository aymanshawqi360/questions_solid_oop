import 'dart:math';

import 'package:flutter/material.dart';
import 'package:question_solid_oop/questions/notification_service_design/model/app_notifier.dart';
import 'package:question_solid_oop/questions/notification_service_design/model/email_notification.dart';
import 'package:question_solid_oop/questions/notification_service_design/model/notification.dart';
import 'package:question_solid_oop/questions/notification_service_design/model/you_tube_notification.dart';

void main() {
  //!notification_service_design
  NotificationWidget notificationWidget = YouTubeNotification(
    message: "You have a new video",
  );

  runApp(Home(ddd: AppNotifier(notification: notificationWidget)));
}

class Home extends StatelessWidget {
  const Home({super.key, required this.ddd});

  final AppNotifier ddd;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: Text(ddd.notificationsMessage()))),
    );
  }
}
