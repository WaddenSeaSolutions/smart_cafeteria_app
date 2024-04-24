import 'package:flutter/material.dart';
import 'package:smart_cafeteria_app/pages/home.dart';
import 'package:smart_cafeteria_app/pages/login_page.dart';
import 'package:smart_cafeteria_app/pages/order_page.dart';
import 'package:smart_cafeteria_app/pages/sign_up_page.dart';
import 'package:smart_cafeteria_app/widgets/BottomNavBar.dart';
import 'managers/websocket_manager.dart';

void main() {
  runApp(CafeteriaApp());
}

class CafeteriaApp extends StatelessWidget {
  CafeteriaApp() {
    // Get the singleton instance of WebSocketManager and connect
    WebSocketManager.instance.connect('ws://10.0.2.2:8181');
  }

  @override
  Widget build(BuildContext context) {
    // Use the singleton instance of WebSocketManager
    final webSocketManager = WebSocketManager.instance;

    return MaterialApp(
      title: 'Cafeteria App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(webSocketManager: webSocketManager),
        '/home': (context) => HomeScreen(),
        '/order': (context) => OrderScreen(),
        '/signup': (context) => SignUpPage(webSocketManager: webSocketManager), // Pass WebSocketManager to the SignUpPage
        '/nav': (context) => BottomNavBarWidget(),
      },
    );
  }
}
