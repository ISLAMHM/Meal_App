import 'package:flutter/material.dart';
import 'package:meal_app/widgets/elevated_button_custom.dart';
import 'package:meal_app/helpers.dart';
import 'package:meal_app/widgets/size_config.dart';
import 'package:meal_app/widgets/text_app_style.dart';
import 'package:meal_app/widgets/text_field_app.dart';

class ResetPasswordScreen extends StatefulWidget {
  final String mobile;
  final String code;
  ResetPasswordScreen({required this.mobile, required this.code});
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _passwordConfirmationTextEditingController;
  String? _passwordError;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordTextEditingController = TextEditingController();
    _passwordConfirmationTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _passwordTextEditingController.dispose();
    _passwordConfirmationTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.scaleHeight(70),
            horizontal: SizeConfig.scaleWidth(20)),
        child: Column(
          children: [
            TextAppStyle(
              text: 'fashop.',
              color: Colors.redAccent,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: SizeConfig.scaleHeight(40)),
            TextAppStyle(
              text: 'Please Enter New Password',
              color: Colors.black,
              fontSize: 15,
            ),
            SizedBox(height: SizeConfig.scaleHeight(20)),
            TextFieldApp(
              hint: 'Password',
              textEditingController: _passwordTextEditingController,
              icon: Icons.lock_outline,
              obscureText: true,
              errorText: _passwordError,
            ),
            SizedBox(height: SizeConfig.scaleHeight(20)),
            TextFieldApp(
              hint: 'Confirm Password',
              textEditingController: _passwordConfirmationTextEditingController,
              icon: Icons.lock_outline,
              obscureText: true,
              errorText: _passwordError,
            ),
            SizedBox(height: SizeConfig.scaleHeight(40)),
            ElevatedButtonCustom(
              function: () async {},
              text: 'SEND',
            ),
          ],
        ),
      ),
    );
  }

  bool checkPasswordConfirmation() {
    if (_passwordTextEditingController.text ==
        _passwordConfirmationTextEditingController.text) {
      return true;
    }
    Helpers.showSnackBar(
        context: context, message: 'Password confirmation error', error: true);
    return false;
  }
}
