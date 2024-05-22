import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart_cafeteria_app/managers/JWTTokenStorage.dart';
import 'package:smart_cafeteria_app/managers/events.dart';
import 'package:smart_cafeteria_app/pages/sign_up_page.dart';
import '../animation/scale_route.dart';
import '../managers/websocket_manager.dart';

class LoginPage extends StatelessWidget {
  // Add a WebSocketManager parameter
  final WebSocketManager webSocketManager;
  final JWTTokenStorage jwtTokenStorage;

  // Constructor to accept WebSocketManager instance
  LoginPage({required this.webSocketManager, required this.jwtTokenStorage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: LoginForm(webSocketManager: webSocketManager, jwtTokenStorage: jwtTokenStorage), // Pass WebSocketManager to LoginForm
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  // Add a WebSocketManager field
  final WebSocketManager webSocketManager;
  final JWTTokenStorage jwtTokenStorage;

  // Constructor to accept WebSocketManager instance
  LoginForm({required this.webSocketManager, required this.jwtTokenStorage});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController(text: "andreas123");
  final _passwordController = TextEditingController(text: "11521152");
  String? _jwtToken;

  late StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();
    // Convert the stream to a broadcast stream
    Stream<String> broadcastStream = widget.webSocketManager.getMessages();

    // Listen for incoming messages (e.g. the JWT token)
    _subscription = broadcastStream
    .map((message) => jsonDecode(message) as Map<String, dynamic>)
    .where((message) {
      return message['eventType'] == 'successfulLogin';
    })
        .listen((message) {
      setState(() {
        // Store the JWT token or perform any other actions
        _jwtToken = message['token'];

        widget.webSocketManager.sendMessage(jsonEncode(AuthenticationAction(token: _jwtToken!).toJson()));

        // Perform additional actions with the JWT token (e.g., navigate to another page, show a message)
        if (_jwtToken != null && _jwtToken!.isNotEmpty) {
          widget.jwtTokenStorage.storeJWTToken(_jwtToken!);
          Navigator.pushReplacementNamed(context, '/nav');
          // You can now use the JWT token as needed (e.g., navigate to another page)
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center( // Wrap with Center widget
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _handleLogInButtonPress,
            child: Text('Login'),
          ),
          SizedBox(height: 20.0), // Added space for better readability
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Align the Row to the center
            children: <Widget>[
              Text(
                "Don't have an account? ",
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontStyle: FontStyle.normal,
                ),
              ),
              InkWell(
                onTap: () => {
                  Navigator.pushNamed(context, '/signup')
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color(0xFFf7418c),
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogInButtonPress(){
    String username = _usernameController.text;
    String password = _passwordController.text;

    final registerUserData = {
      'action': 'login',
      'Username': username,
      'Password': password,
    };

    final jsonData = jsonEncode(registerUserData);

    widget.webSocketManager.sendMessage(jsonData);
  }
}
