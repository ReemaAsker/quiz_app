import 'package:flutter/material.dart';

import '../constants.dart';
import 'outline_widget.dart';

class level_box extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final String title;
  final String image_path;
  final List<Color> color_gra;
  final Function() function_click;

  const level_box(
      {super.key,
      required this.icon,
      required this.subtitle,
      required this.title,
      required this.image_path,
      required this.color_gra,
      required this.function_click});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function_click,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            margin: EdgeInsets.only(top: 60),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(28)),
              gradient: LinearGradient(
                colors: color_gra,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  outline_button(
                    icon: icon,
                    iconcolor: Colors.white,
                    bcolor: Colors.white,
                    function: () => {},
                  ),
                  SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.white60),
                  ),
                  SizedBox(height: 8),
                  Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ],
              ),
            ),
          ),
          Image(image: AssetImage(image_path)),
        ],
      ),
    );
  }
}
