import 'package:flutter/material.dart';
import 'package:nysc/Screens/Security/components/body.dart';
import 'package:nysc/Screens/Security/components/report_incidence_modal.dart';

class Security extends StatefulWidget {
  @override
  _SecurityState createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  int _selectedIndex = 1;
  static List<String> dashboardRoutes = [
    '/dashboard',
    '/security',
    '/welcome',
    '/login'
  ];

  _onItemTapped(int index) {
    Navigator.pushNamed(
      context,
      dashboardRoutes.elementAt(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leadingWidth: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 5, top: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFFAEE39C),
                radius: 30,
                // child: Image.asset(''),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Damilola',
                style: TextStyle(
                    color: Color(0xFF2C3F28),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications,
              color: Color(0xff269400),
              size: 24.0,
            ),
          )
        ],
        bottom: PreferredSize(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 10, right: 25, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Security Report',
                  style: TextStyle(
                      color: Color(0xFF269400),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Row(
                    children: [
                      Text(
                        '24 Hours',
                        style: TextStyle(
                            color: Color(0xFF269400),
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFE4F6DE),
                  ),
                ),
              ],
            ),
          ),
          preferredSize: const Size.fromHeight(30.0),
        ),
      ),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF269400),
        onPressed: () {
          buildShowReportInidenceModalBottomSheet(context);
        },
        child: Icon(Icons.add),
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
    );
  }
}
