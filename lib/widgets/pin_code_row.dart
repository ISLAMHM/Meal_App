import 'package:flutter/material.dart';

import 'pin_code_button.dart';

class PinCodeRow extends StatelessWidget {
  final String firstNumber;
  final void Function() firstNumberAction;
  final String secondNumber;
  final void Function() secondNumberAction;
  final String thirdNumber;
  final void Function() thirdNumberAction;

  PinCodeRow({
    required this.firstNumber,
    required this.firstNumberAction,
    required this.secondNumber,
    required this.secondNumberAction,
    required this.thirdNumber,
    required this.thirdNumberAction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PinCodeButton(
          number: firstNumber,
          onPressed: firstNumberAction,
        ),
        PinCodeButton(
          number: secondNumber,
          onPressed: secondNumberAction,
        ),
        PinCodeButton(
          number: thirdNumber,
          onPressed: thirdNumberAction,
        ),
      ],
    );
  }
}
