import 'package:flutter/material.dart';

class SigninFormContainer extends StatefulWidget {
  @override
  SigninFormContainerState createState() {
    return SigninFormContainerState();
  }
}

class SigninFormContainerState extends State<SigninFormContainer> {
  @override
  Widget build(BuildContext c) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Sign in"),
      ),
      body: SigninForm(),
    );
  }
}

class SigninForm extends StatefulWidget {
  @override
  SigninFormState createState() {
    return SigninFormState();
  }
}

class SigninFormState extends State<SigninForm> {
  final _frmSignin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext c) {
    return Form(
      key: _frmSignin,
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Email is required';
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Email', hintText: "Email address"),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'Password is required!';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Password', hintText: "Password"),
                  )),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                    color: Colors.blueAccent,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          child: Icon(Icons.lock_open),
                          padding: EdgeInsets.all(5),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text("Login"),
                        )
                      ],
                    )),
                    onPressed: () {
                      // do somethimg
                      // Navigator.pushNamed(context, '/signup');
                    },
                  ),
                ),
              )
            ],
          )),
    );
  }
}
