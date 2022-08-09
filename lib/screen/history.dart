import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  // List<String> data = ['Page 0', 'Page 1', 'Page 2'];
  // int initPosition = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('History',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 10),
                    child: Container(
                      width: 160,
                      height: 35,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        'Last 3 months',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(),
                child: TabBar(
                  // indicator: BoxDecoration(
                  //   color: Colors.purple[400],
                  // ),
                  indicatorColor: Colors.purple,
                  labelColor: Colors.purple,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      text: 'Completed Classes',
                    ),
                    Tab(
                      text: 'Missed Classes',
                    )
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(children: [
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Your student recording setting are turned off and your student video and audio are not recorded.You can still playback the teacher and curriculum interactions. \n Adjust your recording settings for future classes',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'WorkSans',
                          color: Colors.grey[800]),
                    ),
                    Text(
                      'Here.',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontSize: 15),
                    ),
                    Container(
                      width: 400,
                      height: 450,
                      decoration: BoxDecoration(color: Colors.white70),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/img/check-list.png',
                            width: 150,
                            height: 200,
                          ),
                          Text(
                            'No Class record yet.Book now.',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Book Class',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.purple[500],
                                fixedSize: const Size(240, 55),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
                Center(
                  child: Text('2'),
                ),
              ])),
            ],
          ),
        ),
      ),
    );
  }
}
