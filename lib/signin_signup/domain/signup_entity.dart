class SignUpEntity {
  final String name;
  final String email;
  final String password;

  SignUpEntity(
      {required this.name, required this.email, required this.password});

  Map<String, dynamic> toMap() {
    return {'name': name, 'email': email, 'password': password};
  }

  @override
  String toString() => '[name: $name, email: $email, password: $password]';
}
