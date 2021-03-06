import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io' show File, HttpHeaders, Platform;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:nysc/Models/broadcast_case.dart';
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
  String api = '/api/v1/gateway/login';
  var res = await http.post(Uri.parse('$baseUrl$api'),
      body: jsonEncode({
        "email": email.trim().toLowerCase(),
        "password": password,
      }),
      headers: {
        'Client-Public': '2',
        'Client-Secret': 'AMpnJrBVuFxvSM7k0V7sYt05S59lPxfOat9g3p0F',
        'Content-Type': 'application/json',
        // 'Accept': 'application/json',
      });
  print(res.body);
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

Future<BroadcastCase> broadcastCase(
  String type,
  String description,
  String location, {
  File image,
  File video,
}) async {
  String api = '/api/v1/gateway/incident';
  var url = Uri.parse('$baseUrl$api');
  String accessToken = await getVariable('access_token');
  var request = http.MultipartRequest('POST', url);
  if (image != null) {
    request.files.add(await http.MultipartFile.fromPath("image", image.path));
  }
  if (video != null) {
    request.files.add(await http.MultipartFile.fromPath("video", video.path));
  }
  request.fields['type'] = type;
  request.fields['description'] = description;
  request.fields['location'] = location;
  request.headers['authorization'] = 'Bearer $accessToken';

  var streamedResponse = await request.send();
  print(streamedResponse.statusCode);
  print(streamedResponse);
  if (streamedResponse.statusCode == 201) {
    var response = await http.Response.fromStream(streamedResponse);
    print(response.body);
    return BroadcastCase.fromJson(jsonDecode(response.body));
  } else {
    return null;
  }
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
