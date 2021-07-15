import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io' show File, HttpHeaders, Platform;
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

String baseUrl = 'http://67.207.69.246';
Future attemptLogin({String email, String password}) async {
  var res =
      await http.post(Uri.parse('http://67.207.69.246/api/v1/gateway/login'),
          body: jsonEncode({
            "email": email.trim().toLowerCase(),
            "password": password,
          }),
          headers: {
        'Client-Public': '2',
        'Client-Secret': 'ibTVTRz6TdUi6Byc9tWvQAE4GDz8wAzS9GDvMBkk',
        'Content-Type': 'application/json',
        // 'Accept': 'application/json',
      });
  // print(res.body);
  if (res.statusCode == 200) {
    //store in variable and local_db
    dynamic data = json.decode(res.body);
    var accessToken = data['token']['access_token'];
    // Write value
    storeVariable("access_token", accessToken);
    // String value = await getVariable("access_token");
    // print(value);
    return data;
  } else {
    //use show dialog to show error
    // throw Exception('Failed to login');
    return null;
  }
}

Future broadcastCase(
  String type,
  String description,
  String location,
  File image,
  File video,
) async {
  String api = '/api/v1/gateway/incident';
  var url = Uri.parse('$baseUrl$api');
  // print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<");
  // print(url);

// (String filename, String url) async {
//   var request = http.MultipartRequest('POST', Uri.parse(url));
//   request.files.add(
//     await http.MultipartFile.fromPath(
//       'picture',
//       filename
//     )
//   );
//   var res = await request.send();
// }
  String accessToken = await getVariable('access_token');
  var request = http.MultipartRequest('POST', url);
  request.files.add(await http.MultipartFile.fromPath("image", image.path));
  request.files.add(await http.MultipartFile.fromPath("video", video.path));
  request.fields['type'] = type;
  request.fields['description'] = description;
  request.fields['location'] = location;
  request.headers['authorization'] = 'Bearer $accessToken';

  var response = await request.send();
  print(response.statusCode);

  // var res = await http.post(url, body: {
  //   "type": type,
  //   "description": description,
  //   "location": location,
  //   "image": image,
  //   "video": video
  // }, headers: {
  //   HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
  // });

  // print(res.statusCode);
  // if (res.statusCode == 200) {
  //   print(res);
  //   return json.decode(res.body);
  // } else {
  //   return null;
  // }
}

storeVariable(key, value) async {
  //store data in securestorage
  await storage.write(key: key, value: value);
}

Future<String> getVariable(key) async {
  // get data from secure storage
  String value = await storage.read(key: key);
  return value;
}
