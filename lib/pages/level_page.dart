import 'package:flutter/material.dart';
import 'package:quiz_app_final/pages/intro_page.dart';
import 'package:quiz_app_final/pages/quiz_page.dart';
import 'package:quiz_app_final/widgets/level_box.dart';

import '../constants.dart';
import '../widgets/outline_widget.dart';

class levelPage extends StatefulWidget {
  const levelPage({super.key});

  @override
  State<levelPage> createState() => _levelPageState();
}

class _levelPageState extends State<levelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                outline_button(
                  icon: Icons.favorite,
                  function: () => {},
                  iconcolor: Colors.blue,
                  bcolor: kGreyFont.withOpacity(0.3),
                ),
                outline_button(
                  icon: Icons.person,
                  function: () => {},
                  iconcolor: Colors.blue,
                  bcolor: kGreyFont.withOpacity(0.3),
                ),
              ],
            ),
            const Text(
              'Let\'s play',
              style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sf-Pro-Text',
                  color: kRedFont),
            ),
            const SizedBox(height: 8),
            const Text(
              'Be the first!',
              style: TextStyle(
                  fontSize: 18, fontFamily: 'Sf-Pro-Text', color: kGreyFont),
            ),
            const SizedBox(height: 20),
            level_box(
              icon: Icons.check,
              subtitle: 'level 1',
              title: 'True or False',
              image_path: 'assets/images/bags.png',
              color_gra: [kL1, kL12],
              function_click: () => Navigator.pushNamed(context, '/intro'),
            ),
            const SizedBox(height: 24),
            level_box(
              icon: Icons.play_arrow,
              subtitle: 'level 2',
              title: 'Multiple choice',
              image_path: 'assets/images/ballon-s.png',
              color_gra: [kL2, kL3],
              function_click: () =>
                  MaterialPageRoute(builder: (context) => intro_page()),
            ),
          ],
        ),
      ),
    );
  }
}
