import 'package:question_solid_oop/questions/notification_service_design/model/notification.dart';

//low Level module
class EmailNotification extends NotificationWidget {
  final String message;

  EmailNotification({required this.message});
  @override
  String send() {
    return "Email Notification ${message}";
  }
}
