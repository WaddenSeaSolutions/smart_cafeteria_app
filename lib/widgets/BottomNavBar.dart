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
      // navigateToScreens(index);
    });
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
      selectedItemColor: Color(0xFFfd5352),
      onTap: _onItemTapped,
    );
  }
}
