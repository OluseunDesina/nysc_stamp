import 'package:flutter/material.dart';
import 'package:nysc/Screens/Security/components/body.dart';

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
  List<String> items = [
    'Robbery',
    'Riot',
    'Accident',
    'Kidnapping',
    'Medical',
    'Civil Unrest'
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
          // showModalBottomSheet(
          //     context: context,
          //     builder: (context) {
          //       return Column(
          //         children: [
          //           Icon(Icons.close),
          //           Text('Report Incidence'),
          //           Text('Enter Location'),
          //           TextField(
          //             decoration: InputDecoration(
          //                 fillColor: Color.fromRGBO(242, 246, 255, 0.1),
          //                 focusColor: Color.fromRGBO(242, 246, 255, 0.1),
          //                 enabledBorder: OutlineInputBorder(
          //                     borderSide: BorderSide(
          //                         color: Color.fromRGBO(174, 227, 156, 1))),
          //                 labelText: 'Enter Surname',
          //                 labelStyle: TextStyle(
          //                     fontSize: 15,
          //                     fontWeight: FontWeight.w400,
          //                     fontStyle: FontStyle.normal,
          //                     color: Color.fromRGBO(174, 227, 156, 1))),
          //           ),
          //           Text('Incident Type'),
          //           ListView.builder(
          //             itemCount: items.length,
          //             itemBuilder: (context, index) {
          //               return Row(children: [
          //                 InputChip(
          //                   label: Text('${items[index]}'),
          //                 ),
          //               ]);
          //             },
          //           )
          //         ],
          //       );
          //     });
          buildShowSecurityStatusModalBottomSheet(context);
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

  Future<dynamic> buildShowSecurityStatusModalBottomSheet(
      BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.70,
            padding:
                const EdgeInsets.only(top: 30, left: 20, bottom: 30, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: Icon(Icons.close),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Text(
                  'Security Status',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xFF269400),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Thank you for submitting an incidental report. We will like to confirm your safety at the moment',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0xFF535C6F)),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Failure to respond to this request in 10 minutes, we will automatically register you as unsafe',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0xFF269400)),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    child: Text('I am Safe, thanks',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15)),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF269400),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    child: Text('I am not Safe, Send help',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15)),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFF2626),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
