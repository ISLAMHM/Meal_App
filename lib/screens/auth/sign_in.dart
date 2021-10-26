import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/screens/auth/password/forget_password.dart';
import 'package:meal_app/screens/auth/sign_up.dart';
import 'package:meal_app/screens/bottom_navigation_bar/bn.dart';
import 'package:meal_app/widgets/elevated_button_custom.dart';
import 'package:meal_app/widgets/or.dart';
import 'package:meal_app/widgets/sign_with.dart';
import 'package:meal_app/widgets/size_config.dart';
import 'package:meal_app/widgets/text_app_style.dart';
import 'package:meal_app/widgets/text_field_app.dart';

import '../main_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController _mobileTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;

  String? _mobileError;
  String? _passwordError;

  ///////////////////////////////////
  // var fcm = FirebaseMessaging.instance;
  ////////////////////////////////////

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mobileTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = navigateToSignUp;
/////////***********////////////
//     fcm.getToken().then((value) {
//       print('FCM TOKEN: $value');
//     });
  }

  void navigateToSignUp() => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpScreen(),
      ));

  @override
  void dispose() {
    // TODO: implement dispose
    _mobileTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.scaleHeight(70),
              horizontal: SizeConfig.scaleWidth(20)),
          child: Column(
            children: [
              TextAppStyle(
                text: 'fashop.',
                color: Colors.redAccent,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: SizeConfig.scaleHeight(48)),
              SignWith(
                function: () async {},
                image: Image.asset('images/google.png', height: 19),
                text: 'Connect With Google',
              ),
              SizedBox(height: SizeConfig.scaleHeight(20)),
              SignWith(
                function: () {},
                image: Image.asset('images/facebook.png', height: 19),
                text: 'Connect With Facebook',
              ),
              SizedBox(height: SizeConfig.scaleHeight(40)),
              Or(),
              SizedBox(height: SizeConfig.scaleHeight(40)),
              TextFieldApp(
                hint: 'Mobile',
                maxLength: 13,
                textEditingController: _mobileTextEditingController,
                icon: Icons.phone_android,
                textInputType: TextInputType.phone,
                errorText: _mobileError,
              ),
              SizedBox(height: SizeConfig.scaleHeight(20)),
              TextFieldApp(
                hint: 'Password',
                textEditingController: _passwordTextEditingController,
                icon: Icons.lock_outline,
                obscureText: true,
                errorText: _passwordError,
              ),
              Row(
                children: [
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPassword(),
                            ));
                      },
                      child: TextAppStyle(
                        text: 'Forgot password?',
                        fontWeight: FontWeight.bold,
                        textDecoration: TextDecoration.underline,
                      )),
                ],
              ),
              ElevatedButtonCustom(
                  function: () {
                    print('hi');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  text: 'Get Started '),
              SizedBox(height: SizeConfig.scaleHeight(30)),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.scaleTextFont(15)),
                  children: [
                    TextSpan(text: '  '),
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                          color: Colors.redAccent, fontWeight: FontWeight.w500),
                      recognizer: _tapGestureRecognizer,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future signIn() async {}

  bool checkData() {
    if (_mobileTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty &&
        checkMobileNumber()) {
      return true;
    }
    return false;
  }

  bool checkMobileNumber() {
    if (_mobileTextEditingController.text.startsWith('56') ||
        _mobileTextEditingController.text.startsWith('59')) {
      return true;
    }
    return false;
  }

  void checkError() {
    setState(() {
      _mobileError = _mobileTextEditingController.text.isNotEmpty
          ? null
          : 'Enter mobile number';
      _passwordError = _passwordTextEditingController.text.isNotEmpty
          ? null
          : 'Enter password';
    });
  }
}
