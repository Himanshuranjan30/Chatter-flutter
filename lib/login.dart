import 'package:chatter/services/auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthServices _auth = AuthServices();

  handlelogin() async {
    await _auth.signInWithGoogle();
    Navigator.of(context).pushNamed('/dashboard');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Chatter',
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton.icon(
              onPressed: () => handlelogin(),
              icon: Icon(Icons.login),
              label: Text('Login with Google'))
        ],
      ),
    );
  }
}
