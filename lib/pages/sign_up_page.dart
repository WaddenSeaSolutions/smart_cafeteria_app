import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import '../managers/websocket_manager.dart';

class SignUpPage extends StatelessWidget {
  final WebSocketManager webSocketManager;

  SignUpPage({required this.webSocketManager});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SignUpForm(webSocketManager: webSocketManager),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  final WebSocketManager webSocketManager;

  SignUpForm({required this.webSocketManager});

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  StreamSubscription<String>? _webSocketSubscription;

  @override
  void initState() {
    super.initState();
    // Initialize WebSocket listener using the widget reference
    _webSocketSubscription = widget.webSocketManager.getMessages().listen(
            (data) {
          // Handle server response
          print('Response from server: $data');
          // Navigate to another page or perform another action based on the response
          Navigator.pushReplacementNamed(context, '/');
        },
        onError: (error) {
          print('Error from WebSocket stream: $error');
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
          onPressed: _handleSignUpButtonPress,
          child: Text('Sign Up'),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Already have an account? ",
              style: TextStyle(
                color: Color(0xFF666666),
                fontStyle: FontStyle.normal,
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushReplacementNamed(context, '/'),
              child: Text(
                "Log in",
                style: TextStyle(
                  color: Color(0xFFf7418c),
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    // Dispose of the WebSocket listener and controllers
    _webSocketSubscription?.cancel();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSignUpButtonPress() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    final registerUserData = {
      'Type': 'register',
      'Username': username,
      'Password': password,
    };

    // Convert the map to a JSON string
    final jsonData = jsonEncode(registerUserData);

    // Use WebSocketManager to send the data
    widget.webSocketManager.sendMessage(jsonData);

  }
}
