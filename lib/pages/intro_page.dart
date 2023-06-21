import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app_final/pages/quiz_page.dart';

import '../constants.dart';
import '../widgets/outline_widget.dart';

class intro_page extends StatefulWidget {
  const intro_page({super.key});

  @override
  State<intro_page> createState() => _intro_pageState();
}

class _intro_pageState extends State<intro_page> {
  @override
  Widget build(BuildContext context) {
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
                      function: () => Navigator.pop(context)),
                ],
              ),
              // Padding(
              // padding: const EdgeInsets.only(top: 72.0),
              Padding(
                padding: const EdgeInsets.only(top: 34.0, bottom: 16.0),
                child: Center(
                    child:
                        Image(image: AssetImage('assets/images/ballon-s.png'))),
              ),
              // ),
              const Text(
                'level 2',
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 18,
                    fontFamily: 'Sf-Pro-Text'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Continuing',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sf-Pro-Text'),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Do you feel Confidant?Here you\'ll challenge\none of our most diffecult level questions!',
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                    fontFamily: 'Sf-Pro-Text'),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 95),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/quiz');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Expanded(
                        child: Center(
                          child: Text(
                            'Game',
                            style: TextStyle(
                                color: kBlueBg,
                                fontSize: 20,
                                fontFamily: 'Sf-Pro-Text',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
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
