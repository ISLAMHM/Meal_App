import 'package:flutter/material.dart';
import 'package:meal_app/widgets/size_config.dart';
import 'package:meal_app/widgets/text_app_style.dart';

class SignWith extends StatelessWidget {
  final String text;
  final Widget image;
  final Function() function;

  SignWith({required this.text, required this.image, required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: SizeConfig.scaleHeight(60),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey.withOpacity(.5), width: .7)),
        child: Row(
          children: [
            Spacer(),
            image,
            SizedBox(width: SizeConfig.scaleWidth(10)),
            TextAppStyle(
              text: text,
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.scaleTextFont(15),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
