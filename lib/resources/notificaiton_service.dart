// // import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// // class Notif {
// //   static Future initialize(FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin
// //   ) async {
// //     var androidInitialize = new AndroidInitializationSettings( 'mipmap/ic_launcher'
// //     );
// //     var initializationSettings = new InitializationSettings(android: androidInitialize);
// //     await flutterLocalNotificationsPlugin.initialize(initializationSettings);
// //   }
  
// //     static Future showBigTextNotification({var id=0, required String title, required String body,
// //      var payload, required FlutterLocalNotificationsPlugin fln})
// //       async {
// //         AndroidNotificationDetails androidPlatformChannelSpecifics =
// //     AndroidNotificationDetails(
// //         'Traveleasy', 
// //         'Thanks for payment',
// //         playSound: true,
// //         sound: RawResourceAndroidNotificationSound('notification'),
// //         importance: Importance.max,
// //         priority: Priority.high,
// //     );

// //     var not= NotificationDetails(android: androidPlatformChannelSpecifics);
// //     await fln.show(0, title, body, not, payload: payload);
// //   }
// // }

// class NotificationController {

//   /// Use this method to detect when a new notification or a schedule is created
//   @pragma("vm:entry-point")
//   static Future <void> onNotificationCreatedMethod(ReceivedNotification receivedNotification) async {
//     // Your code goes here
//   }

//   /// Use this method to detect every time that a new notification is displayed
//   @pragma("vm:entry-point")
//   static Future <void> onNotificationDisplayedMethod(ReceivedNotification receivedNotification) async {
//     // Your code goes here
//   }

//   /// Use this method to detect if the user dismissed a notification
//   @pragma("vm:entry-point")
//   static Future <void> onDismissActionReceivedMethod(ReceivedAction receivedAction) async {
//     // Your code goes here
//   }

//   /// Use this method to detect when the user taps on a notification or action button
//   @pragma("vm:entry-point")
//   static Future <void> onActionReceivedMethod(ReceivedAction receivedAction) async {
//     // Your code goes here

//     // Navigate into pages, avoiding to open the notification details page over another details page already opened
//     MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil('/notification-page',
//             (route) => (route.settings.name != '/notification-page') || route.isFirst,
//         arguments: receivedAction);
//   }
// }