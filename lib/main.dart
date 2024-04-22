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
    final WebSocketManager webSocketManager = WebSocketManager();

    CafeteriaApp() {
      webSocketManager.connect('ws://10.0.2.2:8181');
    }
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Cafeteria App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(), // Route for the login page
          '/home': (context) => HomeScreen(), // Route for the home page
          '/order': (context) => OrderScreen(),
          '/signup': (context) => SignUpPage(webSocketManager: webSocketManager),
          '/nav': (context) => BottomNavBarWidget(),
        },
      );
    }
  }
