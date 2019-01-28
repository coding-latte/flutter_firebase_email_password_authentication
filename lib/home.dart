import 'package:flutter/material.dart';

class HomeContainer extends StatefulWidget {
  @override
  HomeContainerState createState() {
    return HomeContainerState();
  }
}

class HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext c) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext c) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Hello World"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signin");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Icon(Icons.lock_open), Text("Sign in")],
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Icon(Icons.person_add), Text("Sign up")],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
