import 'package:flutter/material.dart';
import 'package:meal_app/widgets/elevated_button_custom.dart';
import 'package:meal_app/helpers.dart';
import 'package:meal_app/widgets/size_config.dart';
import 'package:meal_app/widgets/text_app_style.dart';
import 'package:meal_app/widgets/text_field_app.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late TextEditingController _mobileTextEditingController;
  String? _mobileError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mobileTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _mobileTextEditingController.dispose();
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
              text: 'Enter the mobile number associated with your account',
              color: Colors.grey.shade700,
            ),
            SizedBox(height: SizeConfig.scaleHeight(20)),
            TextFieldApp(
              hint: 'Mobile',
              maxLength: 13,
              textEditingController: _mobileTextEditingController,
              icon: Icons.phone_android,
              textInputType: TextInputType.phone,
              errorText: _mobileError,
            ),
            SizedBox(height: SizeConfig.scaleHeight(40)),
            ElevatedButtonCustom(function: () async {}, text: 'SEND'),
          ],
        ),
      ),
    );
  }

  bool checkData() {
    if (_mobileTextEditingController.text.isNotEmpty) {
      return true;
    }
    Helpers.showSnackBar(
        context: context, message: 'please Enter mobile number', error: true);
    return false;
  }
}
