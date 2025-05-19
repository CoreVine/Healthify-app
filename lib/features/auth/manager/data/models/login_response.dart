import 'package:healthify_app/features/auth/manager/data/models/user.dart';

class LoginResponse {
  final String message;
  final int status;
  final User user;
  final String token;

  LoginResponse({
    required this.message,
    required this.status,
    required this.user,
    required this.token,
  });

  // Convert JSON to LoginResponse
  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      message: json['message'],
      status: json['status'],
      user: User.fromJson(json['data']['user']),
      token: json['data']['token'],
    );
  }

  // Convert LoginResponse to JSON
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'status': status,
      'data': {
        'user': user.toJson(),
        'token': token,
      },
    };
  }
}

class LoginRequest {
  String email;
  String password;

  LoginRequest(this.email, this.password);

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }

}