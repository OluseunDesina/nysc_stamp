import 'package:flutter/material.dart';

Future<dynamic> buildShowSecurityStatusModalBottomSheet(BuildContext context) {
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
