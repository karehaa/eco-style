class SignUpReqParameter {
  final String name;
  final String email;
  final String password;
  final String? phoneNumber;
  final String? address;
  final String? role;
  final bool? isAdmin;

  SignUpReqParameter({
    required this.name,
    required this.email,
    required this.password,
    this.phoneNumber,
    this.address,
    this.role = "user",
    this.isAdmin = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'phone_number': phoneNumber,
      'address': address,
      'role': role,
      'is_admin': isAdmin,
    };
  }
}
