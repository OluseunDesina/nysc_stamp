import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  child: Text('Create Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15)),
                  onPressed: () {},
                  elevation: 5,
                  color: Colors.white,
                  textColor: Colors.green,
                ),
                RaisedButton(
                  child: Text('Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15)),
                  onPressed: () {},
                  elevation: 5,
                  color: Colors.green,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
