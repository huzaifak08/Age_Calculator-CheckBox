import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final oldImage =
        "https://images.unsplash.com/photo-1608649672403-3609a75eae18?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8b2xkJTIwbWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80";
    TextStyle defaultStyle = TextStyle(color: Colors.white, fontSize: 15.0);
    TextStyle linkStyle = TextStyle(color: Colors.blue);
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 580,
              color: Colors.red,
              child: Stack(
                children: [
                  Image(
                    image: NetworkImage(oldImage),
                    fit: BoxFit.cover,
                    color: Colors.black87,
                    colorBlendMode: BlendMode.darken,
                  ),
                  ListView(
                    padding: EdgeInsets.all(16),
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12),
                      TextLabel(text: 'Name:'),
                      SizedBox(height: 12),
                      TextFieldWidget(),
                      SizedBox(height: 12),
                      TextLabel(text: 'Father Name:'),
                      SizedBox(height: 12),
                      TextFieldWidget(),
                      SizedBox(height: 12),
                      TextLabel(text: 'Email:'),
                      SizedBox(height: 12),
                      TextFieldWidget(),
                      TextLabel(text: 'Password:'),
                      SizedBox(height: 12),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(23),
                          ),
                        ),
                        obscureText: true,
                        obscuringCharacter: '*',
                      ),
                      SizedBox(height: 12),
                      Container(
                        // color: Colors.red,
                        height: 40,
                        // width: 10,
                        margin: EdgeInsets.fromLTRB(70, 20, 70, 20),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage(),
                                ));
                          },
                          child: Text('Register'),
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
                      SizedBox(height: 12),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Already Registered?',
                                style: defaultStyle),
                            TextSpan(
                              text: ' Click Here to Login',
                              style: linkStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Text(
              'Contact US',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 11, 74, 126)),
            ),
            ListTile(
              title: Text('+92 340 1690149'),
              leading:
                  Icon(Icons.whatsapp, color: Color.fromARGB(255, 8, 141, 13)),
              trailing: Icon(
                Icons.done,
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('www.capregsoft.com'),
              leading: Icon(
                Icons.wordpress,
                color: Colors.blue,
              ),
              trailing: Icon(
                Icons.done,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Text Class Widget:
class TextLabel extends StatelessWidget {
  const TextLabel({Key? key, required this.text}) : super(key: key);

  final text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      textAlign: TextAlign.start,
    );
  }
}

// TextField Widget:
Widget TextFieldWidget() => TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
