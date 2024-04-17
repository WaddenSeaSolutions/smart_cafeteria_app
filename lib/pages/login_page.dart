import 'package:flutter/material.dart';
import 'package:smart_cafeteria_app/pages/sign_up_page.dart';

import '../animation/scale_route.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: LoginForm(),
      ),
    );
  }
}
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

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
            onPressed: () {
              // Perform login functionality here
              String username = _usernameController.text;
              String password = _passwordController.text;

              // For demo purposes, just print the username and password
              print('Username: $username');
              print('Password: $password');

              // Check credentials (replace this with actual authentication logic)
              bool isAuthenticated = true; // Assuming login is successful

              if (isAuthenticated) {
                // Navigate to the HomeScreen
                Navigator.pushReplacementNamed(context, '/home');
              }
            },
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
                  Navigator.push(context, ScaleRoute(page: SignUpScreen()))
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
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
