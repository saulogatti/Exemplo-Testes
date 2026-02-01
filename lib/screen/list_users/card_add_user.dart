import 'package:flutter/material.dart';

class CardAddUser extends StatelessWidget {
  final VoidCallback onTap;

  final TextEditingController textNameController;

  const CardAddUser({
    super.key,
    required this.onTap,
    required this.textNameController,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: SizedBox(
          height: 120,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add, size: 40, color: Colors.blue),
                SizedBox(height: 8),
                Text(
                  'Add User',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                TextField(
                  controller: textNameController,
                  decoration: InputDecoration(hintText: 'Enter user details'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
