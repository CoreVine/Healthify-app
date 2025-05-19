class User {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final DateTime? emailVerifiedAt;
  final String role;
  final bool termsAccepted;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.emailVerifiedAt,
    required this.role,
    required this.termsAccepted,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert JSON to User object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      emailVerifiedAt: json['email_verified_at'] != null
          ? DateTime.parse(json['email_verified_at'])
          : null,
      role: json['role'],
      termsAccepted: json['terms_accepted'] == 1,
      status: json['status'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  // Convert User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'email_verified_at': emailVerifiedAt?.toIso8601String(),
      'role': role,
      'terms_accepted': termsAccepted ? 1 : 0,
      'status': status,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}