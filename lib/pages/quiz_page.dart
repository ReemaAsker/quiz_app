import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app_final/constants.dart';
import 'package:quiz_app_final/quiz_Brain.dart';
import 'package:quiz_app_final/widgets/outline_widget.dart';

class Quiz_page extends StatefulWidget {
  const Quiz_page({super.key});

  @override
  State<Quiz_page> createState() => _Quiz_pageState();
}

class _Quiz_pageState extends State<Quiz_page> {
  var counter = 10;
  // Color bcolor = Colors.white;
  // late Color fcolor = kBlueBg;
  // late IconData ans_icon = Icons.check;
  // late Color icon_color = Colors.white;
  Color color1 = kBlueBg;
  Color color2 = kBlueBg;

  _startTimer() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        counter--;
      });
      if (counter == 0) {
        timer.cancel();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    QuizBrain qb = QuizBrain();
    void next() {
      setState(() {
        qb.nextQu();
      });
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [kL2, kBlueBg]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 58.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  outline_button(
                      icon: Icons.close,
                      iconcolor: Colors.white,
                      bcolor: Colors.white.withOpacity(0.5),
                      function: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil('/', (context) => false)),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 44,
                        height: 44,
                        child: CircularProgressIndicator(
                          value: counter / 10,
                          color: Colors.white,
                          backgroundColor: Colors.white12,
                        ),
                      ),
                      Text(
                        counter.toString(),
                        style: const TextStyle(
                          fontFamily: 'Sf-Pro-Text',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () => null,
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '3',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    style: const ButtonStyle().copyWith(
                      shape: const MaterialStatePropertyAll(
                        // CircleBorder(),
                        RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18))),
                      ),
                      side: MaterialStatePropertyAll(
                        BorderSide(color: Colors.white.withOpacity(0.5)),
                      ),
                      padding:
                          const MaterialStatePropertyAll(EdgeInsets.all(8)),
                    ),
                  ),
                ],
              ),
              // Padding(
              // padding: const EdgeInsets.only(top: 72.0),
              const Padding(
                padding: const EdgeInsets.only(top: 34.0, bottom: 16.0),
                child: Center(
                    child: Image(image: AssetImage('assets/images/ship.png'))),
              ),
              // ),
              const Text(
                'question 5 of 10',
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 20,
                    fontFamily: 'Sf-Pro-Text'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                qb.getText(),
                // 'In which city of Germancy is the largest port?',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sf-Pro-Text'),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 50),
                child: Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            color2 = Colors.red;
                            next();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: color2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(width: 24),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'True',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'Sf-Pro-Text',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Icon(Icons.check,
                                  size: 30.0, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // ElevatedButton(
                      //   onPressed: () {},
                      //   style: ElevatedButton.styleFrom(
                      //     backgroundColor: kG1,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(18),
                      //     ),
                      //   ),
                      //   child: const Padding(
                      //     padding: EdgeInsets.all(16.0),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       mainAxisSize: MainAxisSize.max,
                      //       children: [
                      //         SizedBox(width: 24),
                      //         Expanded(
                      //           child: Center(
                      //             child: Text(
                      //               'Humburg',
                      //               style: TextStyle(
                      //                   color: Colors.white,
                      //                   fontSize: 18,
                      //                   fontFamily: 'Sf-Pro-Text',
                      //                   fontWeight: FontWeight.bold),
                      //             ),
                      //           ),
                      //         ),
                      //         Icon(Icons.check,
                      //             size: 30.0, color: Colors.white),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            color1 = Colors.green;
                            next();
                            // check1 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: color1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const SizedBox(width: 24),
                              const Expanded(
                                child: Center(
                                  child: Text(
                                    'False',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'Sf-Pro-Text',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Icon(Icons.check,
                                  size: 30.0, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
