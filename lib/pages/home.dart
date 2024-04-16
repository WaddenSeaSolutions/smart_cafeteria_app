import 'package:flutter/material.dart';
import 'package:smart_cafeteria_app/widgets/BottomNavBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Welcome to the Home Screen!'),
      ),
      bottomNavigationBar: BottomNavBarWidget(), // Add your BottomNavBarWidget here
    );
  }
}
