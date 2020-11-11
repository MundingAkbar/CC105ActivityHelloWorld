import 'package:HelloWorld/models/user.dart';
import 'package:HelloWorld/screens/authenticate/authenticate.dart';
import 'package:HelloWorld/screens/authenticate/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //return either authenticate or home
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
