import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Dashboard());
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
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
                      onPressed: () {},
                      elevation: 5,
                      color: Color.fromRGBO(38, 148, 0, 1),
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
        ),
      ),
    );
  }
}

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
                        onPressed: () {},
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

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xffE5E5E5),
          appBar: AppBar(
            toolbarHeight: 100,
            elevation: 0,
            centerTitle: false,
            backgroundColor: Color(0xffE5E5E5),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/avatar.png'),
                  // radius: 50.0,
                  backgroundColor: Color.fromRGBO(174, 227, 156, 0.4),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Color.fromRGBO(120, 119, 119, 1),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Dracharys Snow",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff000000)),
                ),
              ],
            ),
            actions: [
              Icon(
                Icons.notifications,
                color: Color(0xff269400),
                size: 24.0,
              )
            ],
            // bottom: PreferredSizeWidget(),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    shadowColor: Color.fromRGBO(0, 0, 0, 0.05),
                    elevation: 4,
                    child: ListTile(
                      title: Text(
                        "Covid is real. Stay Safe",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff929AAB)),
                      ),
                      trailing: Icon(
                        Icons.close,
                        color: Color(0xff269400),
                        size: 15.0,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Corper News",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Card(
                          shadowColor: Color.fromRGBO(0, 0, 0, 0.05),
                          elevation: 4,
                          child: ListTile(
                            contentPadding: EdgeInsets.all(15.0),
                            leading: Image(
                              image: AssetImage("images/Rectangle4.png"),
                              height: 50.0,
                            ),
                            title: Text(
                              "New Corpers Onboarding",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            subtitle: Text(
                              "Ullamcorper velit quis est aenean tellus in, aenean tellus in.",
                              style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(120, 119, 119, 1)),
                            ),
                          )),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Security",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Card(
                        shadowColor: Color.fromRGBO(0, 0, 0, 0.05),
                        elevation: 4,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "20 Reports",
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff269400)),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        // mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "View All",
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff000000)),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_right,
                                            color: Color(0xffd0d0d0),
                                            size: 15.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                // trailing: TextButton(
                                //   onPressed: () {},
                                //   child: Row(
                                //     // mainAxisAlignment: MainAxisAlignment.end,
                                //     crossAxisAlignment: CrossAxisAlignment.end,
                                //     children: [
                                //       Text('View All'),
                                //     ],
                                //   ),
                                // ),
                              ),
                              ListTile(
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Robbery",
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff535C6F)),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        // mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Details",
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff269400)),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_right,
                                            color: Color(0xffd0d0d0),
                                            size: 15.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                // trailing: TextButton(
                                //   onPressed: () {},
                                //   child: Row(
                                //     // mainAxisAlignment: MainAxisAlignment.end,
                                //     crossAxisAlignment: CrossAxisAlignment.end,
                                //     children: [
                                //       Text('View All'),
                                //     ],
                                //   ),
                                // ),
                              ),
                              ListTile(
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Riot",
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff535C6F)),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        // mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Details",
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff269400)),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_right,
                                            color: Color(0xffd0d0d0),
                                            size: 15.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                // trailing: TextButton(
                                //   onPressed: () {},
                                //   child: Row(
                                //     // mainAxisAlignment: MainAxisAlignment.end,
                                //     crossAxisAlignment: CrossAxisAlignment.end,
                                //     children: [
                                //       Text('View All'),
                                //     ],
                                //   ),
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chat with Corpers around you",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                child: Text(
                                  "DO",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xffffffff)),
                                ),
                                // backgroundImage: AssetImage('images/avatar.png'),
                                radius: 40.0,
                                backgroundColor: Color(0xff2C3F28),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  "Dracharys",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xff535C6F)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                child: Text(
                                  "JO",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xffffffff)),
                                ),
                                // backgroundImage: AssetImage('images/avatar.png'),
                                radius: 40.0,
                                backgroundColor: Color(0xff2C3F28),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  "John",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xff535C6F)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                child: Text(
                                  "JE",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xffffffff)),
                                ),
                                // backgroundImage: AssetImage('images/avatar.png'),
                                radius: 40.0,
                                backgroundColor: Color(0xff2C3F28),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  "Jesse",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xff535C6F)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Color(0xffE5E5E5),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xff269400),
                  // size: 24.0,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xff269400),
                  ),
                ),
                // backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.verified_user,
                  color: Color(0xff269400),
                  // size: 24.0,
                ),
                title: Text(
                  'Security',
                  style: TextStyle(
                    color: Color(0xff269400),
                  ),
                ),
                // backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.sms,
                  color: Color(0xff269400),
                  // size: 24.0,
                ),
                title: Text(
                  'Chat',
                  style: TextStyle(
                    color: Color(0xff269400),
                  ),
                ),
                // backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color(0xff269400),
                  // size: 24.0,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    color: Color(0xff269400),
                  ),
                ),
                // backgroundColor: Colors.green,
              ),
            ],
          )
          // bottomNavigationBar: BottomAppBar(
          //   color: Color(0xffE5E5E5),
          //   elevation: 0,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       // Column(
          //       //   children: [
          //       IconButton(
          //         tooltip: 'Open navigation menu',
          //         icon: const Icon(Icons.home),
          //         onPressed: () {},
          //       ),
          //
          //       // Text("Home"),
          //       //   ],
          //       // ),
          //       IconButton(
          //         tooltip: 'Search',
          //         icon: const Icon(Icons.verified_user),
          //         onPressed: () {},
          //       ),
          //       IconButton(
          //         tooltip: 'Search',
          //         icon: const Icon(Icons.pending),
          //         onPressed: () {},
          //       ),
          //       IconButton(
          //         tooltip: 'Favorite',
          //         icon: const Icon(Icons.person),
          //         onPressed: () {},
          //       ),
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
