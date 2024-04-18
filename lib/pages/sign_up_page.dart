import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SignUpForm(),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
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
            // Perform sign up functionality here
            String username = _usernameController.text;
            String password = _passwordController.text;

            // For demo purposes, just print the username and password
            print('Username: $username');
            print('Password: $password');

            Navigator.pushReplacementNamed(context, '/');
            // After sign up, you can navigate to another page or perform any other action
          },
          child: Text('Sign Up'),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // Align the Row to the center
          children: <Widget>[
            Text(
              "Already have an account? ",
              style: TextStyle(
                color: Color(0xFF666666),
                fontStyle: FontStyle.normal,
              ),
            ),
            InkWell(
              onTap: () => {
                Navigator.pushReplacementNamed(context, '/')
              },
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
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
