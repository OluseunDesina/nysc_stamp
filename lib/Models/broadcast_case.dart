import './login_user.dart' as login_user;

class Incident {
  int id;
  int user_id;
  String location;
  String type;
  dynamic description;
  String video;
  String audio;
  int is_closed;
  String created_at;
  String updated_at;

  Incident({
    this.id,
    this.user_id,
    this.location,
    this.type,
    this.description,
    this.video,
    this.audio,
    this.is_closed,
    this.created_at,
    this.updated_at,
  });

  Incident.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        user_id = json['user_id'],
        location = json['location'],
        type = json['type'],
        description = json['description'],
        video = json['video'],
        audio = json['audio'],
        is_closed = json['is_closed'],
        created_at = json['created_at'],
        updated_at = json['updated_at'];
}

class Data {
  int id;
  String id_formatted;
  login_user.Data user;
  Incident incident;
  String description;
  String areas;
  int expected_responses;
  dynamic reported_safe;
  dynamic reported_unsafe;
  int pending_responses;
  String created_at;
  String updated_at;

  Data(
      {this.id,
      this.id_formatted,
      this.user,
      this.incident,
      this.description,
      this.areas,
      this.expected_responses,
      this.reported_safe,
      this.reported_unsafe,
      this.pending_responses,
      this.created_at,
      this.updated_at});

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        id_formatted = json['id_formatted'],
        user = login_user.Data.fromJson(json['user']),
        incident = Incident.fromJson(json['incident']),
        description = json['description'],
        areas = json['areas'],
        expected_responses = json['expected_responses'],
        reported_safe = json['reported_safe'],
        reported_unsafe = json['reported_unsafe'],
        pending_responses = json['pending_responses'],
        created_at = json['created_at'],
        updated_at = json['updated_at'];
}

class BroadcastCase {
  Data data;
  bool status;
  String message;

  BroadcastCase({this.data, this.status, this.message});

  BroadcastCase.fromJson(Map<String, dynamic> json)
      : data = Data.fromJson(json['data']),
        status = json['status'],
        message = json['message'];
}
