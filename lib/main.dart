import 'package:flutter/material.dart';

void main() => runApp( LancerApp());

class LancerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Lancer',
      theme:  ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.pinkAccent,
      ),
      home:  LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget { @override _LoginPageState createState() =>  _LoginPageState(); }

class _LoginPageState extends State<LoginPage> {

  ///--- FOR TEXTFIELD INPUT RETRIEVAL ---
  final emailController = TextEditingController();
  final passController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child:  Container(
          padding: EdgeInsets.all(70.0),
          margin: EdgeInsets.all(40.0),
          child:  Column(
            children: <Widget>[
               Text('Sign In', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23.5,),),


               TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email', labelStyle: TextStyle(fontWeight: FontWeight.w700, color: Colors.black87),
//                  helperStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.black54),
//                  contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 50.0),
                ),
              ),

               Divider(color: Color.fromRGBO(0, 0, 0, 0.0),),

               TextField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password', labelStyle: TextStyle(fontWeight: FontWeight.w700, color: Colors.black87),
//                  helperStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.black54),
//                  contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 50.0),
                ),
              ),

               Text('', style: TextStyle(fontSize: 40.0),),

               FloatingActionButton.extended(
                onPressed: _confirmDialog,
                label:  Text('CONFIRM'),
                icon: Icon(Icons.done),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // temp method
  void _confirmDialog() {
    String emailInput = emailController.text; String passInput = passController.text;

    // TODO: RUN THROUGH USERS VIA JSON AND USE WHILE LOOP TO VALIDATE

    // temp testing
    if (emailInput == 'joe@example.com' && passInput == 'joe123') {
      var dialog = AlertDialog(content: Text(emailInput + ", " + passInput),);
      showDialog(context: context, child: dialog);
    } else {
      var dialog = AlertDialog(content: Text('BONE?!?!?!'),);
      showDialog(context: context, child: dialog);
    }
  }

}