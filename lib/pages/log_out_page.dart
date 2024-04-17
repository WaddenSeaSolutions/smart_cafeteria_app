import 'package:flutter/material.dart';
import 'package:smart_cafeteria_app/widgets/BottomNavBar.dart';

class LogOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log Out'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
          child: Text('Log out'),
        ),
      ),
      // bottomNavigationBar: BottomNavBarWidget(), // Add your BottomNavBarWidget here
    );
  }
}
