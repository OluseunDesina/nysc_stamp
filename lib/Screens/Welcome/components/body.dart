import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Sign In',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15)),
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, '/login');
                    Navigator.pushNamed(context, '/security');
                  },
                  elevation: 5,
                  color: Color.fromRGBO(37, 148, 0, 1),
                  // color: Color(0x269400),
                  textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
