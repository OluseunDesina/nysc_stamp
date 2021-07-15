import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nysc/Models/broadcast_case.dart';
import 'package:nysc/Screens/Security/components/security_status_modal.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nysc/services.dart';
import 'package:path/path.dart';

Future<dynamic> buildShowReportInidenceModalBottomSheet(BuildContext context) {
  File _image;
  File _video;
  final _locationController = TextEditingController();
  final _descriptionController = TextEditingController();

  final _picker = ImagePicker();

  List<String> incidence = [
    'Robbery',
    'Riot',
    'Accident',
    'Kidnapping',
    'Medical',
    'Civil Unrest'
  ];

  int selectedIncidentIndex = -1;
  String location;
  String description;
  String type;

  return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      context: context,
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter myState) {
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
                  'Report Incidence',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xFF269400),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter Location',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color(0xFF535C6F),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                  child: TextField(
                    controller: _locationController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 18,
                      ),
                      fillColor: Color.fromRGBO(242, 246, 255, 0.1),
                      focusColor: Color.fromRGBO(242, 246, 255, 0.1),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(174, 227, 156, 1))),
                      labelText: 'Search location',
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF929AAB),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Incident Type',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color(0xFF535C6F),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputChip(
                      onSelected: (value) => {
                        myState(() {
                          selectedIncidentIndex = 0;
                        })
                      },
                      backgroundColor: selectedIncidentIndex == 0
                          ? Color(0xFF269400)
                          : Color(0xFFE4F6DE),
                      labelPadding: EdgeInsets.symmetric(horizontal: 10),
                      label: Text('${incidence[0]}'),
                      labelStyle: TextStyle(
                        color: selectedIncidentIndex == 0
                            ? Color(0xFFFFFFFF)
                            : Color(0xFF269400),
                      ),
                      deleteIcon: Icon(
                        Icons.check,
                        color: Color(0xFFFFFFFF),
                      ),
                      onDeleted: () {},
                    ),
                    InputChip(
                      onSelected: (value) => {
                        myState(() {
                          selectedIncidentIndex = 1;
                        })
                      },
                      backgroundColor: selectedIncidentIndex == 1
                          ? Color(0xFF269400)
                          : Color(0xFFE4F6DE),
                      labelPadding: EdgeInsets.symmetric(horizontal: 10),
                      label: Text('${incidence[1]}'),
                      labelStyle: TextStyle(
                        color: selectedIncidentIndex == 1
                            ? Color(0xFFFFFFFF)
                            : Color(0xFF269400),
                      ),
                    ),
                    InputChip(
                      onSelected: (value) => {
                        myState(() {
                          selectedIncidentIndex = 2;
                        })
                      },
                      backgroundColor: selectedIncidentIndex == 2
                          ? Color(0xFF269400)
                          : Color(0xFFE4F6DE),
                      labelPadding: EdgeInsets.symmetric(horizontal: 10),
                      label: Text('${incidence[2]}'),
                      labelStyle: TextStyle(
                        color: selectedIncidentIndex == 2
                            ? Color(0xFFFFFFFF)
                            : Color(0xFF269400),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputChip(
                      onSelected: (value) => {
                        myState(() {
                          selectedIncidentIndex = 3;
                        })
                      },
                      backgroundColor: selectedIncidentIndex == 3
                          ? Color(0xFF269400)
                          : Color(0xFFE4F6DE),
                      labelPadding: EdgeInsets.symmetric(horizontal: 10),
                      label: Text('${incidence[3]}'),
                      labelStyle: TextStyle(
                          color: selectedIncidentIndex == 3
                              ? Color(0xFFFFFFFF)
                              : Color(0xFF269400)),
                    ),
                    InputChip(
                      onSelected: (value) => {
                        myState(() {
                          selectedIncidentIndex = 4;
                        })
                      },
                      backgroundColor: selectedIncidentIndex == 4
                          ? Color(0xFF269400)
                          : Color(0xFFE4F6DE),
                      labelPadding: EdgeInsets.symmetric(horizontal: 10),
                      label: Text('${incidence[4]}'),
                      labelStyle: TextStyle(
                        color: selectedIncidentIndex == 4
                            ? Color(0xFFFFFFFF)
                            : Color(0xFF269400),
                      ),
                    ),
                    InputChip(
                      onSelected: (value) => {
                        myState(() {
                          selectedIncidentIndex = 5;
                        })
                      },
                      backgroundColor: selectedIncidentIndex == 5
                          ? Color(0xFF269400)
                          : Color(0xFFE4F6DE),
                      labelPadding: EdgeInsets.symmetric(horizontal: 10),
                      label: Text('${incidence[5]}'),
                      labelStyle: TextStyle(
                        color: selectedIncidentIndex == 5
                            ? Color(0xFFFFFFFF)
                            : Color(0xFF269400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter Location (Optional)',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color(0xFF535C6F),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(242, 246, 255, 0.1),
                    focusColor: Color.fromRGBO(242, 246, 255, 0.1),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(174, 227, 156, 1))),
                    labelText: 'Kindly provide details of incident',
                    labelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF929AAB),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Add Media',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color(0xFF535C6F),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        PickedFile image =
                            await _picker.getImage(source: ImageSource.gallery);
                        myState(() {
                          _image = File(image.path);
                        });
                      },
                      child: Icon(
                        Icons.camera_alt_sharp,
                        color: Color(0xFF269400),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    _image == null
                        ? Text(
                            'Picture',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color(0xFF929AAB),
                            ),
                          )
                        : Text(basename(_image.path)),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () async {
                        PickedFile video =
                            await _picker.getVideo(source: ImageSource.gallery);
                        myState(() {
                          _video = File(video.path);
                        });
                      },
                      child: Icon(
                        Icons.video_camera_back,
                        color: Color(0xFF269400),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _video == null
                        ? Text(
                            'Video',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color(0xFF929AAB),
                            ),
                          )
                        : Text(basename(_video.path)),
                  ],
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    child: Text('Submit Report',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15)),
                    onPressed: () async {
                      location = _locationController.text;
                      description = _descriptionController.text;
                      // image
                      // video
                      // buildShowSecurityStatusModalBottomSheet(context);
                      if (location.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Invalid Location'),
                                content:
                                    Text('The location field cannot be empty'),
                              );
                            });
                      } else if (description.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Invalid Description'),
                                content: Text(
                                    'The description field cannot be empty'),
                              );
                            });
                      } else if (selectedIncidentIndex == -1) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Invalid Incident Type'),
                                content: Text('Select a valid incidence type'),
                              );
                            });
                      } else {
                        type = incidence[selectedIncidentIndex];
                        // ,
                        BroadcastCase res = await broadcastCase(
                            type, description, location,
                            image: _image, video: _video);
                        if (res != null) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Success'),
                                  content: Text(
                                    res.message,
                                  ),
                                );
                              });
                          Navigator.pop(context);
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Error'),
                                  content: Text('An error occured'),
                                );
                              });
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF269400),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
      });
}
