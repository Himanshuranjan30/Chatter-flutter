import 'package:chatter/Dashboard.dart';
import 'package:chatter/login.dart';
import 'package:chatter/services/auth.dart';
import 'package:chatter/services/authentication.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    if (_auth.user == null)
      return LoginPage();
    else
      return Dashboard();
  }
}
