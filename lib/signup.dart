import 'package:flutter/material.dart';

class SignupFormContainer extends StatefulWidget {
  @override
  SignupFormContainerState createState() {
    return SignupFormContainerState();
  }
}

class SignupFormContainerState extends State<SignupFormContainer> {
  Widget build(BuildContext c) {
    return new Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Signup"),
      ),
      body: SignupForm(),
    );
  }
}

class SignupForm extends StatefulWidget {
  @override
  SignupFormState createState() {
    return SignupFormState();
  }
}

class SignupFormState extends State<SignupForm> {
  final _signupForm = GlobalKey<FormState>();

  Widget build(BuildContext c) {
    return Form(
      key: _signupForm,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Name is required!";
                  }
                },
                decoration:
                    InputDecoration(labelText: "Name", hintText: "Name"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Email is required!';
                  }
                },
                decoration:
                    InputDecoration(labelText: "Email", hintText: "Email"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Phone (Optional)", hintText: "Phone"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (v) {
                  if (v.isEmpty) {
                    return "Password is required!";
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {
                  // do something
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Icon(Icons.person_add),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Text("Sign up"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
