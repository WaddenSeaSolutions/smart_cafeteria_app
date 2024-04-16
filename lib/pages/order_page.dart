import 'package:flutter/material.dart';
import 'package:smart_cafeteria_app/widgets/BottomNavBar.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
      ),
      body: Center(
        child: Text('Welcome to the Order Screen!'),
      ),
      bottomNavigationBar: BottomNavBarWidget(), // Add your BottomNavBarWidget here
    );
  }
}
