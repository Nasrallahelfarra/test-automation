import 'package:flutter/material.dart';
import 'package:testautomation/screen_tow.dart';
import 'NavigationService.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // Simulate some state within our app, that the test cares about
  ValueNotifier<bool> isLoggedInState = ValueNotifier(false);

  // Create a key for the navigator, so our tests can control dialogs
  GlobalKey<NavigatorState> navKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    NavigationService  navigationService=NavigationService();

    return MaterialApp(
      routes: {
        'to_screen': (context) => const ScreenTow(),
      },
      navigatorKey: navKey,
      home: LoginScreen()
    );
  }
}