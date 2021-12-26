import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? userName ='ahmed';
  String? password ='ahmed 123';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent[100],
        ),
        body: Column(children: [
          SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Login',
              style: GoogleFonts.lobster(
                  color: Colors.red,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 400,
            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(
                      'https://www.seekpng.com/png/full/138-1388103_user-login-icon-login.png',
                    ))),
          ),
          SizedBox(
            height: 50,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'User name',
              labelStyle: TextStyle(
                color: Colors.black87,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: Icon(Icons.person),
              prefixIconColor: Colors.red,
            ),
            autocorrect: false,
            cursorColor: Colors.red,
            showCursor: true,
            cursorRadius: Radius.circular(8),
            obscureText: false,
            keyboardType: TextInputType.name,
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Colors.black87,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: Icon(Icons.password),
              prefixIconColor: Colors.red,
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              suffixIconColor: Colors.red,
            ),
            autocorrect: false,
            obscuringCharacter: '*',
            cursorColor: Colors.red,
            showCursor: true,
            cursorRadius: Radius.circular(8),
            obscureText: true,
            keyboardType: TextInputType.text,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(245, 15, 5, 0),
                child: Text(
                  'forgot password',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(height: 40),
          ElevatedButton.icon(
              style: ButtonStyle(),
              onPressed: () {
                if (userName! == 'ahmed' && password! == 'ahmed 123') {
                  Navigator.pushNamed(context, '/studentScreen');
                } 
              },
              icon: Icon(
                Icons.login,
                color: Colors.red,
                size: 22,
              ),
              label: Text('login',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold))),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have account?'),
              SizedBox(
                width: 7,
              ),
              Text(
                'sign up',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700]),
              )
            ],
          ),
          SizedBox(
            height: 70,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/privacy');
              },
              child: Text('privace & policy'))
        ]),
      ),
    );
  }
}
