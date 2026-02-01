class UserModel {
  int id;
  String firstName;
  String email;
  UserModel({required this.id, required this.firstName, required this.email});

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, email: $email)';
  }
}
