import 'package:flutter/material.dart';
import 'package:meal_app/widgets/size_config.dart';

import 'text_app_style.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final Color color;
  final Function() function;
  final String text;
  final IconData? icon;

  ElevatedButtonCustom(
      {this.color: Colors.redAccent,
      required this.function,
      required this.text,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(100)),
          primary: color,
          minimumSize: Size(double.infinity, 48),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        ),
        onPressed: function,
        child: Row(
          children: [
            Spacer(),
            Icon(icon != null ? icon : null),
            SizedBox(width: SizeConfig.scaleWidth(10)),
            TextAppStyle(
              text: text,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            Spacer(flex: 2)
          ],
        ));
  }
}
