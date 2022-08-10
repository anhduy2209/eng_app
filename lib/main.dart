// import 'package:eng_app/model/proflie_model.dart';
import 'package:eng_app/screen/bookclass.dart';
import 'package:eng_app/screen/history.dart';
import 'package:eng_app/screen/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const History(),
    );
  }
}
<<<<<<< HEAD
=======

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
>>>>>>> f437ff5703fb92318d19f326cd4bc5f6efc0ae02
