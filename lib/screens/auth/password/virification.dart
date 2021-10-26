import 'package:flutter/material.dart';
import 'package:meal_app/widgets/elevated_button_custom.dart';
import 'package:meal_app/widgets/pin_code_button.dart';
import 'package:meal_app/widgets/pin_code_field.dart';
import 'package:meal_app/widgets/pin_code_row.dart';
import 'package:meal_app/widgets/size_config.dart';
import 'package:meal_app/widgets/text_app_style.dart';

import 'reset_password.dart';

class VerificationScreen extends StatefulWidget {
  final String mobile;
  VerificationScreen({required this.mobile});
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String _pinCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.transparent),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.redAccent,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: SizeConfig.scaleHeight(33),
            start: SizeConfig.scaleWidth(20),
            end: SizeConfig.scaleWidth(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextAppStyle(
                  text: 'PinCode',
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              SizedBox(height: SizeConfig.scaleHeight(10)),
              TextAppStyle(text: 'Enter PinCode you received'),
              SizedBox(height: SizeConfig.scaleHeight(25)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PinCodeField(
                    code: _getPinFieldCode(position: 1),
                    marginEnd: SizeConfig.scaleWidth(12),
                  ),
                  PinCodeField(
                    code: _getPinFieldCode(position: 2),
                    marginEnd: SizeConfig.scaleWidth(12),
                  ),
                  PinCodeField(
                    code: _getPinFieldCode(position: 3),
                    marginEnd: SizeConfig.scaleWidth(12),
                  ),
                  PinCodeField(
                    code: _getPinFieldCode(position: 4),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.scaleHeight(50)),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: SizeConfig.scaleWidth(48),
                  end: SizeConfig.scaleWidth(48),
                ),
                child: Column(
                  children: [
                    PinCodeRow(
                      firstNumber: '1',
                      firstNumberAction: () => setPinCode(code: '1'),
                      secondNumber: '2',
                      secondNumberAction: () => setPinCode(code: '2'),
                      thirdNumber: '3',
                      thirdNumberAction: () => setPinCode(code: '3'),
                    ),
                    SizedBox(height: SizeConfig.scaleHeight(25)),
                    PinCodeRow(
                      firstNumber: '4',
                      firstNumberAction: () => setPinCode(code: '4'),
                      secondNumber: '5',
                      secondNumberAction: () => setPinCode(code: '5'),
                      thirdNumber: '6',
                      thirdNumberAction: () => setPinCode(code: '6'),
                    ),
                    SizedBox(height: SizeConfig.scaleHeight(25)),
                    PinCodeRow(
                      firstNumber: '7',
                      firstNumberAction: () => setPinCode(code: '7'),
                      secondNumber: '8',
                      secondNumberAction: () => setPinCode(code: '8'),
                      thirdNumber: '9',
                      thirdNumberAction: () => setPinCode(code: '9'),
                    ),
                    SizedBox(height: SizeConfig.scaleHeight(25)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        PinCodeButton(
                          number: '0',
                          marginEnd: SizeConfig.scaleWidth(20),
                          onPressed: () => setPinCode(code: '0'),
                        ),
                        PinCodeButton(
                          icon: Icons.backspace,
                          color: Colors.redAccent,
                          onPressed: () => removeCode(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.scaleHeight(60)),
              ElevatedButtonCustom(
                  function: () {
                    applyCode();
                  },
                  color: color(),
                  text: 'SEND'),
              SizedBox(height: SizeConfig.scaleHeight(30)),
            ],
          ),
        ),
      ),
    );
  }

  String? _getPinFieldCode({required int position}) {
    if (_pinCode.length >= position) {
      print('islam:::::;${_pinCode.length}');
      return _pinCode[position - 1];
    }
  }

  void setPinCode({required String code}) {
    if (_pinCode.length < 4) {
      setState(() {
        _pinCode += code;
      });
    }
  }

  void removeCode() {
    if (_pinCode.isNotEmpty) {
      setState(() {
        _pinCode = _pinCode.substring(0, _pinCode.length - 1);
      });
    }
  }

  void applyCode() {
    if (_pinCode.length == 4) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ResetPasswordScreen(mobile: widget.mobile, code: _pinCode),
          ));
    }
  }

  Color color() {
    if (_pinCode.length == 4) {
      return Colors.redAccent;
    }
    return Colors.grey;
  }
}
