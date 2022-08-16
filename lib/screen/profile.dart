import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'dart:html';
// import '../menu_icon.dart';
// import 'dart:html' as html;
// import 'dart:ui';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Avatar, Phone number
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/6583/6583483.png'),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  '+84909755***',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'WorkSans'),
                ),
              ],
            ),

            // 0.0 Total class
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text(
                      '0.0',
                      style: TextStyle(color: Colors.purpleAccent),
                    ),
                    Text(
                      'Total class \n point balance',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'WorkSans',
                          color: Colors.grey[600]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      '0.0',
                      style: TextStyle(color: Colors.purpleAccent),
                    ),
                    Text(
                      'Student class \n point balance',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'WorkSans',
                          color: Colors.grey[600]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      '0.0',
                      style: TextStyle(color: Colors.purpleAccent),
                    ),
                    Text(
                      'LingoAce \n Reward Tokens',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'WorkSans',
                          color: Colors.grey[600]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 35),

            //Invte Friends, Win Giffs

            const Padding(
              padding: EdgeInsets.only(right: 180),
              child: Text(
                'Invite Friends, Win Giffs',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'WorkSans'),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // Share - Upload
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 130,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'SHARE \n Poster For Class ',
                            style: TextStyle(
                                color: Colors.orange[900],
                                fontSize: 12,
                                fontFamily: 'WorkSans'),
                          ),
                          // Text(
                          //   ' \nPoster For Class',
                          // ),
                          Image.asset(
                            'assets/img/conversation.png',
                            width: 45,
                            height: 60,
                          )
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Go'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            fixedSize: const Size(100, 25),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'SHARE \n Poster For Class ',
                            style: TextStyle(
                                color: Colors.orange[900],
                                fontSize: 12,
                                fontFamily: 'WorkSans'),
                          ),
                          // Text(
                          //   ' \nPoster For Class',
                          // ),
                          Image.asset(
                            'assets/img/gold.png',
                            width: 50,
                            height: 60,
                          )
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Go'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pinkAccent,
                            fixedSize: const Size(100, 25),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(60)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Share The Referal Links \n Win Points For Goodies111',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'WorkSans'),
                  ),
                  Image.asset(
                    'assets/img/award.png',
                    width: 90,
                    height: 50,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Text(
                'More Services',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'WorkSans'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/img/profile.png',
                              width: 55, height: 55),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Setting',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'WorkSans'),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/img/exchange.png',
                              width: 55, height: 55),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Rewards',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'WorkSans'),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/img/molecule.png',
                              width: 55, height: 55),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Coupon',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'WorkSans'),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/img/certification.png',
                              width: 55, height: 55),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'FeedBack',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'WorkSans'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/img/ebook.png',
                              width: 55, height: 55),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Orders',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'WorkSans'),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/img/graduate.png',
                              width: 55, height: 55),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Student(s)',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'WorkSans'),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/img/question.png',
                              width: 55, height: 55),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Help',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'WorkSans'),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/img/score.png',
                              width: 55, height: 55),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Add Class',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'WorkSans'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/img/chat-box.png',
                              width: 55, height: 55),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Invite Friends',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'WorkSans'),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
