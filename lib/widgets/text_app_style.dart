import 'package:flutter/material.dart';
import 'package:meal_app/widgets/size_config.dart';

class TextAppStyle extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextDecoration textDecoration;
  final int? maxLine;

  TextAppStyle(
      {required this.text,
      this.color: Colors.black,
      this.fontSize: 15,
      this.fontWeight: FontWeight.w400,
      this.textAlign: TextAlign.start,
      this.textDecoration: TextDecoration.none,
      this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      style: TextStyle(
          color: color,
          fontSize: SizeConfig.scaleTextFont(fontSize),
          fontWeight: fontWeight,
          letterSpacing: .5,
          decoration: textDecoration),
    );
  }
}
