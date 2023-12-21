import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:uas_traveleasy/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uas_traveleasy/home.dart';
import 'package:uas_traveleasy/page/homepg.dart';
import 'package:uas_traveleasy/resources/firebase_api.dart';
import 'package:flutter/material.dart';
import 'package:uas_traveleasy/resources/notificaiton_service.dart';
import 'package:uas_traveleasy/splash.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = 
  FlutterLocalNotificationsPlugin();
  void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();

  await AwesomeNotifications().initialize(
    'resource://drawable/app_icon',
    [
      NotificationChannel(
        channelGroupKey: 'basic_channel_group',
        channelKey: 'basic_channel',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests',
        defaultColor: Color(0xFF9D50DD),
        ledColor: Colors.white,
      )
    ],
    channelGroups: [
      NotificationChannelGroup(
        channelGroupKey: 'basic_channel_group',
        channelGroupName: 'Basic group',
      )
    ],
    debug: true,
  );

  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    ),
  );
}

