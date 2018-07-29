import 'package:flutter/material.dart';
import 'package:lancer/LancerAPI.dart';
import 'package:lancer/models/UserModels.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget { @override _LoginPageState createState() =>  _LoginPageState(); }

class _LoginPageState extends State<LoginPage> {

  ///--- FOR TEXTFIELD INPUT RETRIEVAL ---
  final usernameController = TextEditingController();
  final passwordController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child:  Container(
          padding: EdgeInsets.all(70.0),
          margin: EdgeInsets.all(40.0),
          child:  Column(
            children: <Widget>[
              Text('LANCER', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23.5,),),


              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username', labelStyle: TextStyle(fontWeight: FontWeight.w700, color: Colors.black87),
                ),
              ),

              Divider(color: Color.fromRGBO(0, 0, 0, 0.0),),

              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password', labelStyle: TextStyle(fontWeight: FontWeight.w700, color: Colors.black87),
                ),
              ),

              Text('', style: TextStyle(fontSize: 40.0),),

              FloatingActionButton.extended(
                onPressed: () => login(usernameController.text, passwordController.text),
                label:  Text('LOGIN'),
                icon: Icon(Icons.done),


              ),
            ],
          ),
        ),
      ),
    );
  }

  // temp method
  void login(String username, String password) {

    var response;
    LancerAPI.getUserId(username, password).then((val) => response = val);

    print(response);

//    if (response == 'Login Failed') {
//      final snackBar = SnackBar(content: Text(response));
//      Scaffold.of(context).showSnackBar(snackBar);
//    }
//    else {
//      User currentUser; LancerAPI.getUser(response).then((val) => currentUser = val);
//
//      Navigator.push(
//        context,
//        MaterialPageRoute(builder: (context) => HomePage(currentUser))
//      );
//    }

  }

}