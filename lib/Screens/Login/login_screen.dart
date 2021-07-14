import 'package:flutter/material.dart';
import 'package:nysc/Screens/Dashboard/dashboard_screen.dart';
import 'package:nysc/Screens/Login/components/body.dart';
import 'package:nysc/Screens/Security/security_screen.dart';
import 'package:nysc/Screens/Welcome/welcome_screen.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/welcome': (context) => Welcome(),
        '/login': (context) => Login(),
        '/security': (context) => Security(),
        '/dashboard': (context) => Dashboard()
      },
      home: Scaffold(
        backgroundColor: Color.fromRGBO(38, 148, 0, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(38, 148, 0, 1),
          leading: Icon(
            Icons.keyboard_arrow_left, //change to custom Icon
            // color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          elevation: 0,
        ),
        body: LoginBody(),
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {
        //     // Add your onPressed code here!
        //   },
        //   elevation: 0,
        //   label: const Text('Continue'),
        //   backgroundColor: Color.fromRGBO(38, 148, 0, 1),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
