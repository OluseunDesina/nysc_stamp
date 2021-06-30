import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome back. Securely sign in to your Stamp account",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color.fromRGBO(174, 227, 156, 1)),
                ),
                Text(
                  "Surname",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Color.fromRGBO(242, 246, 255, 0.1),
                      focusColor: Color.fromRGBO(242, 246, 255, 0.1),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(174, 227, 156, 1))),
                      labelText: 'Enter Surname',
                      labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(174, 227, 156, 1))),
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Color.fromRGBO(242, 246, 255, 0.1),
                      focusColor: Color.fromRGBO(242, 246, 255, 0.1),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(174, 227, 156, 1))),
                      labelText: 'xxxxxxxxxx',
                      labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(174, 227, 156, 1))),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "Forgot Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: RaisedButton(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Sign in',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/dashboard');
                        },
                        elevation: 0,
                        color: Colors.white, //Colors.white
                        // color: Color(0x269400),
                        textColor: Color.fromRGBO(38, 148, 0, 1),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
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
