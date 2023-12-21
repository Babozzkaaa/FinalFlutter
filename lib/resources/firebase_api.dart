
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:uas_traveleasy/main.dart';

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    print('Token: $fCMToken');

    initPushNotifications();
    
  }


  void handleMessage(RemoteMessage? message) {
    if(message != null) return;
      
    
    navigatorKey.currentState?.pushNamed(
        '/notification',
        arguments: message,
      );
  }

  Future initPushNotifications() async{
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage) ;
    FirebaseMessaging.onMessage.listen(handleMessage);
  }
}