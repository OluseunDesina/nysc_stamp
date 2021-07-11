import 'package:flutter/material.dart';
import 'package:nysc/Screens/Dashboard/dashboard_screen.dart';
import 'package:nysc/Screens/Login/login_screen.dart';
import 'package:nysc/Screens/Security/security_screen.dart';
import 'package:nysc/Screens/Welcome/components/body.dart';

class Welcome extends StatelessWidget {
  static String routeName = '/welcome';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => Welcome(),
        '/login': (context) => Login(),
        '/security': (context) => Security(),
        '/dashboard': (context) => Dashboard()
      },
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Body(),
      ),
    );
  }
}
