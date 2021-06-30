import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   child: Row(
        //     children: [
        //       Text('Security Report'),
        //       Container(
        //         child: Text('24 Hours'),
        //       )
        //     ],
        //   ),
        //   decoration: BoxDecoration(
        //   ),
        // ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Incident Type',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF535C6F),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Robbery',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF269400),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF929AAB),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            '20 June, 2021',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF535C6F),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF929AAB),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Abraham Close, Jikwo',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF535C6F),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF929AAB),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Daylight robbery at gunpoint',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF535C6F),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Incident Type',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF535C6F),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Robbery',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF269400),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF929AAB),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            '20 June, 2021',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF535C6F),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF929AAB),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Abraham Close, Jikwo',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF535C6F),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF929AAB),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Daylight robbery at gunpoint',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF535C6F),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
