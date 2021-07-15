class User {
  int id;
  String first_name;
  String middle_name;
  String last_name;
  dynamic avatar;
  String gender;
  String corps_member_id;
  String email;
  String phone_number;
  String place_of_deployment;
  String batch;
  dynamic next_of_kin;
  dynamic next_of_kin_phone;
  String created_at;
  String updated_at;
  dynamic location;

  User(
      {this.id,
      this.first_name,
      this.middle_name,
      this.last_name,
      this.avatar,
      this.gender,
      this.corps_member_id,
      this.email,
      this.phone_number,
      this.place_of_deployment,
      this.batch,
      this.next_of_kin,
      this.next_of_kin_phone,
      this.created_at,
      this.updated_at,
      this.location});

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        first_name = json['first_name'],
        last_name = json['last_name'],
        avatar = json['avatar'],
        gender = json['gender'],
        corps_member_id = json['corps_member_id'],
        email = json['email'],
        phone_number = json['phone_number'],
        place_of_deployment = json['place_of_deployment'],
        batch = json['batch'],
        next_of_kin = json['next_of_kin'],
        next_of_kin_phone = json['next_of_kin_phone'],
        created_at = json['created_at'],
        updated_at = json['updated_at'],
        location = json['location'];
}

class Data {
  int id;
  String id_formatted;
  User user;
  String description;
  String created_at;
  String updated_at;
  String type;
  String location;
  dynamic video;
  dynamic image;
  bool is_closed;

  Data(
      {this.id,
      this.id_formatted,
      this.user,
      this.description,
      this.created_at,
      this.updated_at,
      this.type,
      this.location,
      this.video,
      this.image,
      this.is_closed});

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        id_formatted = json['id_formatted'],
        user = User.fromJson(json['user']),
        description = json['description'],
        created_at = json['created_at'],
        updated_at = json['updated_at'],
        type = json['type'],
        location = json['location'],
        video = json['video'],
        image = json['image'],
        is_closed = json['is_closed'];
}

class BroadcastCase {
  Data data;
  bool status;
  String code;
  String message;

  BroadcastCase({this.data, this.status, this.code, this.message});

  BroadcastCase.fromJson(Map<String, dynamic> json)
      : data = Data.fromJson(json['data']),
        status = json['status'],
        code = json['code'],
        message = json['message'];
}
