import 'dart:convert';

List<UserModel> foodFromJson(String str) => List<UserModel>.from(
    json.decode(str)['users'].map((x) => UserModel.fromJson(x)));

class UserModel {
  final String id;
  final String firstname;

  UserModel({
    required this.id,
    required this.firstname,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? '',
      firstname: json['firstname'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstname': firstname,
    };
  }
}
