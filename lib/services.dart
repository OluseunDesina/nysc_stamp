import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io' show HttpHeaders, Platform;

// void displayDialog(BuildContext context, String title, String text) =>
//     showDialog(
//       context: context,
//       builder: (context) => Platform.isIOS
//           ? CupertinoAlertDialog(
//               title: Text(title),
//               content: Text(text),
//             )
//           : AlertDialog(
//               title: Text(title),
//               content: Text(text),
//             ),
//     );

String base_url = 'https://40233fa4-4501-45ff-bd89-65a7d321fdf3.mock.pstmn.io';
Future attemptLogin({String email, String password}) async {
  String api = '/api/v1/gateway/login';
  var url = Uri.https(base_url, api);
  var res = await http.post(
    url,
    body: {
      "email": email,
      "password": password,
    },
  );
  if (res.statusCode == 200) {
    return json.decode(res.body);
  } else {
    return null;
  }
}

Future broadcastCase(String incident_id, String description, List areas) async {
  String api = '/api/v1/gateway/broadcast';
  var url = Uri.parse('$base_url$api}');
  var res = await http.post(url, body: {
    "incident_id": incident_id,
    "description": description,
    "areas": areas
  }, headers: {
    HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
  });
}
