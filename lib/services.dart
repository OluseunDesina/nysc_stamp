import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io' show HttpHeaders, Platform;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'Models/login_user.dart';

// Create storage
final storage = new FlutterSecureStorage();

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

// String base_url = 'https://40233fa4-4501-45ff-bd89-65a7d321fdf3.mock.pstmn.io';
// String base_url = 'https://seplat-bucca0.herokuapp.com';
Future attemptLogin({String email, String password}) async {
  // String api = '/api/v1/gateway/login';
  String api = '/auth/token';
  // var url = Uri.https(base_url, api);
  var res = await http.post(
    Uri.parse('http://67.207.69.246/api/v1/gateway/login'),
    body: {
      "email": email,
      "password": password,
    },
  );
  if (res.statusCode == 200) {
    //store in variable and local_db
    LoginUser data = json.decode(res.body);
    var accessToken = data.token.access_token;
    // Write value
    await storage.write(key: "access_token", value: accessToken);
    // print(res.body);
    return data;
  } else {
    //use show dialog to show error
    // throw Exception('Failed to login');
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
