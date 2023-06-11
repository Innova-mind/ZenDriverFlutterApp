class User {
  final int id;
  final String firstName;
  final String lastName;
  final String? userName;
  final String password;
  final String phone;
  final String role;
  final String description;
  final String imageUrl;
  final String birthdayDate;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.password,
    required this.phone,
    required this.role,
    required this.description,
    required this.imageUrl,
    required this.birthdayDate,
  });
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        firstName = json['firstName'],
        lastName = json['lastName'],
        userName = json['userName'],
        password = json['password'],
        phone = json['phone'],
        role = json['role'],
        description = json['description'],
        imageUrl = json['imageUrl'],
        birthdayDate = json['birthdayDate'];



  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'password': password,
      'phone': phone,
      'role': role,
      'description': description,
      'imageUrl': imageUrl,
      'birthdayDate': birthdayDate,
    };
  }
}

class LoginResponse {
  final String id;
  final String userName;
  final String token;

  LoginResponse({required this.id, required this.userName, required this.token});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      id: json['id'].toString(),
      userName: json['userName'],
      token: json['token'],
    );
  }
}



class SignupResponse {
  final String message;

  SignupResponse({required this.message});

  factory SignupResponse.fromJson(Map<String, dynamic> json) {
    return SignupResponse(message: json['message']);
  }
}