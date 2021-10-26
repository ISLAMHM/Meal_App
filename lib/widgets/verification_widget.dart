import 'package:flutter/material.dart';

class VerificationWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final FocusNode requestFocusNode;

  VerificationWidget(
      {required this.textEditingController,
      required this.focusNode,
      required this.requestFocusNode});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(.2),
            offset: Offset(0, 3),
            blurRadius: 10)
      ]),
      child: TextField(
        controller: textEditingController,
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        onChanged: (String text) {
          if (text.length == 1) {
            requestFocusNode.requestFocus();
          }
        },
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          contentPadding: EdgeInsets.zero,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
