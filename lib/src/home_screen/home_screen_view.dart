import 'package:flutter/material.dart';

class homeScreenView extends StatelessWidget {
  const homeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 5,
                        color: Colors.red),
                  )),
              SizedBox(
                height: 250,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  )),
            ],
          )),
    );
  }
}
