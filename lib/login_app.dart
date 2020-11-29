import 'package:flutter/material.dart';
import 'package:flutterqbsui_app/signup.dart';

import 'home_page.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.lightGreenAccent,
        radius: 70.0,
        child: Image.asset('images/reading-quran.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: <Widget>[
          FlatButton(
            minWidth: 310.0,
            height: 42,
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0),
            ),
            color: Colors.blue,
            onPressed: () {
              Navigator.of(context).pushNamed(HomePage.tag);
            },
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );

    final signupLabel = FlatButton(
      child: Text (
        'Sign Up',
          style: TextStyle(color: Colors.black54),
      ),
          onPressed: () {
            Navigator. of (context). pushNamed(SignUp.tag);
          },
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot Password ?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );
  

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center  (
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
            signupLabel,
          ],
        ),
      ),
    );
  }
}