import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String firstName;
  final String email;

  const UserCard({super.key, required this.firstName, required this.email});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(title: Text(firstName), subtitle: Text(email)),
    );
  }
}
