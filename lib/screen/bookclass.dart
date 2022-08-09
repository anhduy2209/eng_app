import 'dart:ui';

import 'package:flutter/material.dart';

class bookclass extends StatefulWidget {
  const bookclass({super.key});

  @override
  State<bookclass> createState() => _bookclassState();
}

class _bookclassState extends State<bookclass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Dy',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/img/schedule.png',
                  height: 45,
                  width: 45,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Schedule',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
      
    ));
  }
}
