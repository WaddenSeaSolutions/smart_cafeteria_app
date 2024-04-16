import 'package:flutter/material.dart';

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
      ],
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
