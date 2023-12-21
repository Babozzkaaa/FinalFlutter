// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationService {
//   final _localNotifications = FlutterLocalNotificationsPlugin();

//   NotificationService();

//   Future<void> initializePlatformNotifications() async {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('ic_stat_justwater');

//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//     );

//     await _localNotifications.initialize(
//       initializationSettings,
//     );
//   }

//   void onDidReceiveLocalNotification(
//     int id,
//     String? title,
//     String? body,
//     String? payload,
//   ) {
//     print('Received local notification with ID $id');
//     // Handle the received notification, e.g., show an in-app notification
//   }

//   void selectNotification(String? payload) {
//     if (payload != null && payload.isNotEmpty) {
//       print('Selected notification with payload: $payload');
//       // Add your logic to handle the selected notification
//     }
//   }
// }
