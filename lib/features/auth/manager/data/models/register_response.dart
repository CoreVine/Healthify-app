class SignUpRequest {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String passwordConfirmation;

  SignUpRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
  });

  // Convert object to JSON (for API request)
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation,
    };
  }
}

class SignUpResponse {
  final String message;
  final int status;
  final UserData user;
  final String token;

  SignUpResponse({
    required this.message,
    required this.status,
    required this.user,
    required this.token,
  });

  // Parse JSON response from API
  factory SignUpResponse.fromJson(Map<String, dynamic> json) {
    return SignUpResponse(
      message: json['message'],
      status: json['status'],
      user: UserData.fromJson(json['data']['user']),
      token: json['data']['token'],
    );
  }
}

class UserData {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final DateTime createdAt;
  final DateTime updatedAt;

  UserData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}
