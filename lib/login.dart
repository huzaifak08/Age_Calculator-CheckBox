import 'package:age_calculator/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final oldImage =
        "https://images.unsplash.com/photo-1608649672403-3609a75eae18?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8b2xkJTIwbWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80";

    final loginImage =
        "https://cdn2.vectorstock.com/i/thumb-large/37/31/user-profile-or-my-account-avatar-login-icon-vector-31253731.jpg";
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Stack(
        children: [
          Image(
            image: NetworkImage(oldImage),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          ListView(
            padding: EdgeInsets.all(12),
            children: [
              Container(
                  // color: Colors.red,
                  height: 200,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      loginImage,
                    ),
                  )),
              SizedBox(height: 12),
              TextLabel(text: 'Email'),
              SizedBox(height: 12),
              TextFieldWidget(),
              SizedBox(height: 12),
              TextLabel(text: 'Password'),
              SizedBox(height: 12),
              TextFieldWidget(),
              SizedBox(height: 12),
              Container(
                // color: Colors.red,
                height: 40,
                // width: 10,
                margin: EdgeInsets.fromLTRB(70, 20, 70, 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ));
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                      side: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                    minimumSize: Size(50, 50),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Not have an account? ',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: 'Register Yourself',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
