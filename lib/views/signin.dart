import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                // onChanged: (text) {},
                cursorColor: Colors.blue,
                style: simpleTextStyle(),
                decoration: textFieldInputDecoration(
                  'Email',
                  Icon(Icons.account_circle, color: Colors.white54),
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                // onChanged: (text) {},
                cursorColor: Colors.black,
                style: simpleTextStyle(),
                decoration: textFieldInputDecoration(
                  'Password',
                  Icon(Icons.vpn_key, color: Colors.white54),
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text('Forgot Password ?', style: simpleTextStyle()),
              ),
              SizedBox(height: 16.0),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text('Sign In', style: simpleTextStyle()),
                decoration: BoxDecoration(
                  // Border
                  borderRadius: BorderRadius.circular(30.0),
                  // Gradient
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff007EF4), const Color(0xff2A75BC)],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Sign In with Google',
                  style: TextStyle(color: Colors.black87, fontSize: 16.0),
                ),
                decoration: BoxDecoration(
                  // Border
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account ? ', style: simpleTextStyle()),
                  Text(
                    'Register Now',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
              SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
