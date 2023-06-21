import 'package:flutter/material.dart';

class outline_button extends StatelessWidget {
  final IconData icon;
  final Color iconcolor;
  final Color bcolor;
  final Function() function;
  const outline_button(
      {super.key,
      required this.icon,
      required this.iconcolor,
      required this.bcolor,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: function,
      child: Icon(
        icon,
        color: iconcolor,
      ),
      style: const ButtonStyle().copyWith(
        shape: const MaterialStatePropertyAll(
          CircleBorder(),
        ),
        side: MaterialStatePropertyAll(
          BorderSide(color: bcolor),
        ),
        padding: const MaterialStatePropertyAll(EdgeInsets.all(8)),
      ),
    );
  }
}
