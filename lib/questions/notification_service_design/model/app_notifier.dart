import 'package:question_solid_oop/questions/notification_service_design/model/notification.dart';

//hight Level module
class AppNotifier {
  final NotificationWidget notification;

  AppNotifier({required this.notification});

  String notificationsMessage() {
    return notification.send();
  }
}
