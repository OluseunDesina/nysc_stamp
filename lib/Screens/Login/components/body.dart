import 'package:flutter/material.dart';
import 'package:nysc/Models/login_user.dart';
import 'package:nysc/services.dart';

class LoginBody extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              controller: _emailController,
              decoration: InputDecoration(
                  fillColor: Color.fromRGBO(242, 246, 255, 0.1),
                  focusColor: Color.fromRGBO(242, 246, 255, 0.1),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(174, 227, 156, 1))),
                  labelText: 'Enter Email',
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
              controller: _passwordController,
              decoration: InputDecoration(
                  fillColor: Color.fromRGBO(242, 246, 255, 0.1),
                  focusColor: Color.fromRGBO(242, 246, 255, 0.1),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(174, 227, 156, 1))),
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
                    onPressed: () async {
                      String email = _emailController.text;
                      String password = _passwordController.text;
                      print(email);
                      print(password);
                      if (!email.contains('@')) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Invalid Email'),
                                content: Text('Enter a valid email'),
                              );
                            });
                      } else if (password.length <= 7) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Invalid Password'),
                                content: Text(
                                    'The password should be at least 8 characters long'),
                              );
                            });
                      } else {
                        print(
                            "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ITS ELSE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
                        var res = await attemptLogin(
                            email: email, password: password);
                        print(res);
                        if (res != null) {
                          Navigator.pushNamed(context, '/dashboard');
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Invalid Password'),
                                  content: Text('Username or password invalid'),
                                );
                              });
                        }
                      }
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
    );
  }
}
