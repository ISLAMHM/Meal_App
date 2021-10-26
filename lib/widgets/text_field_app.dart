import 'package:flutter/material.dart';
import 'package:meal_app/widgets/size_config.dart';

class TextFieldApp extends StatelessWidget {
  final String hint;
  final TextEditingController textEditingController;
  final IconData icon;
  final TextInputType textInputType;
  final bool obscureText;
  final String? errorText;
  final int? maxLength;
  final Color color;

  TextFieldApp(
      {required this.hint,
      required this.textEditingController,
      required this.icon,
      this.textInputType: TextInputType.text,
      this.obscureText: false,
      this.errorText,
      this.maxLength,
      this.color: Colors.white});

  @override
  Widget build(BuildContext context) {
    return TextField(
      // scrollPadding: EdgeInsets.zero,
      maxLength: maxLength != null ? maxLength : null,
      controller: textEditingController,
      cursorColor: Colors.grey,
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
          counterText: '',
          errorText: errorText,
          hintText: hint,
          hintStyle: TextStyle(
              color: Colors.grey, fontSize: SizeConfig.scaleTextFont(15)),
          prefixIcon:
              Icon(icon, color: Colors.grey, size: SizeConfig.scaleWidth(18)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(.5)),
              borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: color),
    );
  }
}
