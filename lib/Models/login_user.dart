class Data {
  int id;
  String first_name;
  String middle_name;
  String last_name;
  dynamic avatar;
  String gender;
  int corps_member_id;
  String email;
  String phone_number;
  String place_of_deployment;
  String batch;
  dynamic next_of_kin;
  dynamic next_of_kin_phone;
  int is_admin;
  String created_at;
  String updated_at;

  Data(
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
      this.is_admin,
      this.created_at,
      this.updated_at});

  Data.fromJson(Map<String, dynamic> json)
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
        is_admin = json['is_admin'],
        created_at = json['created_at'],
        updated_at = json['updated_at'];
}

class Token {
  String token_type;
  int expires_in;
  String access_token;
  String refresh_token;

  Token(
      {this.token_type,
      this.expires_in,
      this.access_token,
      this.refresh_token});

  Token.fromJson(Map<String, dynamic> json)
      : token_type = json['token_type'],
        expires_in = json['expires_in'],
        access_token = json['access_token'],
        refresh_token = json['refresh_token'];
}

class LoginUser {
  Data data;
  bool status;
  String message;
  Token token;

  LoginUser({this.data, this.status, this.message, this.token});

  LoginUser.fromJson(Map<String, dynamic> json)
      : data = Data.fromJson(json['data']),
        status = json['status'],
        message = json['message'],
        token = Token.fromJson(json['token']);
}
