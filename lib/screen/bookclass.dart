import 'package:flutter/material.dart';

class Bookclass extends StatefulWidget {
  const Bookclass({super.key});

  @override
  State<Bookclass> createState() => _BookclassState();
}

class _BookclassState extends State<Bookclass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Dy',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/img/schedule.png',
                              width: 45,
                              height: 45,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text('Schedule',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold))
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Schedule(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/img/online-presentation.png',
                    height: 130,
                    width: 130,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Not able to book the class for now,please contact your learning advisor!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'WorkSans',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));
  }

  String dropdownValue = 'All';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Schudle',
                    style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontSize: 25,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: _showDatePicker,
                    child: Image.asset(
                      'assets/img/schedule.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              )),
          DropdownButton<String>(
            value: dropdownValue,
            items: <String>['All', 'Chinese', 'English', 'Math']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Image.asset(
              'assets/img/check-list.png',
              height: 130,
              width: 130,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'No upcoming class.Book now!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'WorkSans',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
