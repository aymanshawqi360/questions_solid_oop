import 'package:question_solid_oop/questions/notification_service_design/model/notification.dart';

//low Level module
class YouTubeNotification extends NotificationWidget {
  final String message;

  YouTubeNotification({required this.message});
  @override
  String send() {
    return 'YouTube Notification: $message';
  }
}
