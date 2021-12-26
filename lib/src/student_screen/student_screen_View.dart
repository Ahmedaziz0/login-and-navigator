import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class studentView extends StatelessWidget {
  const studentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            child: FutureBuilder<List>(
                future: getStudentName(),
                builder: (context, snapShot) {
                  if (!snapShot.hasData) {
                    return CircularProgressIndicator();
                  } else if (snapShot.hasError) {
                    return Text(snapShot.error.toString());
                  } else {
                         return ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Text(snapShot.data!.toString());
                    });
                  }
                }
                )
                ),
      ),
    );
    // ignore: dead_code
    
    }
    Future<List<dynamic>> getStudentName() async {
      String theUrl = 'https://jsonplaceholder.typicode.com/users';

      http.Response response = await http.get(Uri.parse(theUrl));
      List decodedJson = jsonDecode(response.body);

      return decodedJson.map((e) => e["name"]).toList();
  }
}
