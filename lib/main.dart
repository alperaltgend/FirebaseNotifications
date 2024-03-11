import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutterend/firebase_options.dart';
import 'package:flutterend/push_notifications.dart';


Future _firebaseBackgroundMessage(RemoteMessage message) async {
  if (message.notification != null) {
    print("Some notification Received");
  }
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  PushNotifications.init();
  PushNotifications.localNotiInit();
  FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundMessage);
  
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    String payloadData = jsonEncode(message.data);
    print("Got a message in foreground");
    if (message.notification != null) {
      PushNotifications.showSimpleNotification(
          title: message.notification!.title!,
          body: message.notification!.body!,
          payload: payloadData);
    }
  });

  // for handling in terminated state
  final RemoteMessage? message =
      await FirebaseMessaging.instance.getInitialMessage();

  if (message != null) {
    print("Launched from terminated state");
    
  }


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 150,),
            Text("hola"),
          ],
        ),

      ),
    );
  }
}