import 'package:flutter/material.dart';
import 'package:nysc/Screens/Login/login_screen.dart';
import 'package:nysc/Screens/Security/security_screen.dart';
import 'package:nysc/Screens/Welcome/components/body.dart';

class Welcome extends StatelessWidget {
  static String routeName = '/welcome';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => Welcome(),
        '/login': (context) => Login(),
        '/security': (context) => Security()
      },
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Body(),
      ),
    );
  }
}
