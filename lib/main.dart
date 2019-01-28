import 'package:flutter/material.dart';
import 'package:flutter_firebase_email_password_authentication/home.dart';
import 'package:flutter_firebase_email_password_authentication/signin.dart';
import 'package:flutter_firebase_email_password_authentication/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Authentication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => HomeContainer(), // Home
        '/signin': (context) => SigninFormContainer(),
        '/signup': (context) => SignupFormContainer() // signup form
      },
    );
  }
}
