import 'package:flutter/material.dart';
import 'package:meal_app/widgets/size_config.dart';
import 'package:meal_app/widgets/text_app_style.dart';

class Or extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            endIndent: SizeConfig.scaleWidth(10),
            color: Colors.grey.shade300,
          ),
        ),
        TextAppStyle(
          text: 'Or Login with Mobile',
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            indent: SizeConfig.scaleWidth(10),
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
