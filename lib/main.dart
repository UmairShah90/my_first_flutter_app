import 'package:flutter/material.dart';
import 'package:my_first_app/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

Widget customAppbar() {
  return (AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(
      'Ecom App UI',
      style: TextStyle(color: Colors.black),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        onPressed: () {},
      )
    ],
  ));
}
