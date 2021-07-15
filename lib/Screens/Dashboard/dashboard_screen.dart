import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  static List<String> dashboardRoutes = [
    '/dashboard',
    '/security',
    '/dashboard',
    '/dashboard'
  ];

  _onItemTapped(int index) {
    Navigator.pushNamed(
      context,
      dashboardRoutes.elementAt(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                "Ladipo Rafiu",
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
          elevation: 0.0,
          // backgroundColor: Color(0xFFE5E5E5),
          backgroundColor: Colors.red,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              label: 'Security',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF269400),
          unselectedItemColor: Color(0xFFC4C4C4),
          unselectedLabelStyle: TextStyle(color: Color(0xFFC4C4C4)),
          showUnselectedLabels: true,
          onTap: (index) {
            _onItemTapped(index);
          },
        ),
      ),
    );
  }
}
