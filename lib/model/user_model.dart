// List<UserModel> userFromJson(String str) => List<UserModel>.from(
//     json.decode(str)['users'].map((x) => UserModel.fromJson(x)));

List<UserModel> userFromJson(Map<String, dynamic> json) {
  final List<dynamic> usersJson = json['users'];
  return usersJson.map((x) => UserModel.fromJson(x)).toList();
}

class UserModel {
  final String id;
  final String firstName;
  final String lastName;
  final String maidenName;
  final String age;
  final String gender;
  final String email;
  final String phone;
  final String username;
  final String password;
  final String birthDate;
  final String image;
  final String bloodGroup;
  final String height;
  final String weight;
  final String eyeColor;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.gender,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.height,
    required this.weight,
    required this.eyeColor,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'].toString(),
      firstName: json['firstName'],
      lastName: json['lastName'],
      maidenName: json['maidenName'],
      age: json['age'].toString(),
      gender: json['gender'],
      email: json['email'],
      phone: json['phone'],
      username: json['username'],
      password: json['password'],
      birthDate: json['birthDate'],
      image: json['image'],
      bloodGroup: json['bloodGroup'],
      height: json['height'].toString(),
      weight: json['weight'].toString(),
      eyeColor: json['eyeColor'],
    );
  }
}
