import 'package:flutter/material.dart';
import 'package:smart_cafeteria_app/widgets/BottomNavBar.dart';

class LogOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log Out'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the login screen
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text('Log out'),
            ),
          );
        },
      ),
    );
  }
}