import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      navigateToScreens(index);
    });
  }

  void navigateToScreens(int index) {
    switch (index) {
      case 0:
      // Navigate to HomeScreen
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
      // Navigate to OrderScreen
        Navigator.pushReplacementNamed(context, '/order');
        break;
      case 2:
      // Navigate to LoginScreen
        Navigator.pushReplacementNamed(context, '/');
        break;
      default:
      // Navigate to HomeScreen as default
        Navigator.pushReplacementNamed(context, '/home');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.near_me),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.door_back_door),
          label: 'Logout',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.red,
      onTap: _onItemTapped,
    );
  }
}