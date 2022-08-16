import 'package:eng_app/screen/bookclass.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('History',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'WorkSans')),
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
                      child: const Text(
                        'Last 3 months',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'WorkSans',
                            color: Colors.deepPurple),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 45,
                decoration: const BoxDecoration(),
                child: const TabBar(
                  indicatorColor: Colors.purple,
                  labelColor: Colors.purple,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
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
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Your student recording setting are turned off and your student video and audio are not recorded.You can still playback the teacher and curriculum interactions. \n Adjust your recording settings for future classes',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'WorkSans',
                            color: Colors.grey[800]),
                      ),
                      const Text(
                        'Here.',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontFamily: 'WorkSans',
                            fontSize: 15),
                      ),
                      Container(
                        width: 300,
                        height: 250,
                        decoration: const BoxDecoration(color: Colors.white70),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/img/check-list.png',
                              width: 150,
                              height: 100,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'No Class record yet.Book now.',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'WorkSans'),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Bookclass()));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple[500],
                                  fixedSize: const Size(200, 40),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              child: const Text(
                                'Book Class',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'WorkSans'),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Your student recording setting are turned off and your student video and audio are not recorded.You can still playback the teacher and curriculum interactions. \n Adjust your recording settings for future classes',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'WorkSans',
                            color: Colors.grey[800]),
                      ),
                      const Text(
                        'Here.',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontFamily: 'WorkSans',
                            fontSize: 15),
                      ),
                      Container(
                        width: 300,
                        height: 250,
                        decoration: const BoxDecoration(color: Colors.white70),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/img/check-list.png',
                              width: 150,
                              height: 100,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'No Class record yet.Book now.',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'WorkSans'),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Bookclass()));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple[500],
                                  fixedSize: const Size(200, 40),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              child: const Text(
                                'Book Class',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'WorkSans'),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ])),
            ],
          ),
        ),
      ),
    );
  }
}
