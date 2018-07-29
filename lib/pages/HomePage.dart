import 'package:flutter/material.dart';
import 'package:lancer/models/UserModels.dart';

class HomePage extends StatefulWidget {
  User currentUser;

  HomePage(this.currentUser);

  @override HomePageState createState() => new HomePageState(currentUser);
}

class HomePageState extends State<HomePage> {
  ///--- INSTANCE VARIABLES ---
  User currentUser;

  HomePageState(this.currentUser);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: Column(
          children: <Widget>[
            Text(currentUser.username),
            Text(currentUser.email),
            FloatingActionButton(child: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context),)
          ],
        ),
      ),

    );

  }


}