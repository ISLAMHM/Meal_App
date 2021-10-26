import 'package:flutter/material.dart';
import 'package:meal_app/widgets/elevated_button_custom.dart';
import 'package:meal_app/helpers.dart';
import 'package:meal_app/widgets/or.dart';
import 'package:meal_app/widgets/sign_with.dart';
import 'package:meal_app/widgets/text_field_app.dart';

import '../../widgets/size_config.dart';
import '../../widgets/text_app_style.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _mobileTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _nameTextEditingController;
  var dropDownChoose;
  int id = 0;
  String cityName = '';

  // City city = City();
  String _groupValue = '';
  String? _emailError;
  String? _mobileError;
  String? _passwordError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextEditingController = TextEditingController();
    _mobileTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _nameTextEditingController = TextEditingController();
  }

  // CityGetX controller = Get.put(CityGetX());
  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    _mobileTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _nameTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.scaleWidth(20),
            vertical: SizeConfig.scaleHeight(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Spacer(),
                TextAppStyle(
                  text: 'fashop.',
                  color: Colors.redAccent,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                Spacer(/*flex: 2*/),
              ],
            ),
            SizedBox(height: SizeConfig.scaleHeight(20)),
            TextFieldApp(
              hint: 'Name',
              textEditingController: _nameTextEditingController,
              icon: Icons.lock_outline,
              errorText: _passwordError,
            ),
            SizedBox(height: SizeConfig.scaleHeight(20)),
            TextFieldApp(
              hint: 'Email',
              textEditingController: _emailTextEditingController,
              icon: Icons.email_outlined,
              textInputType: TextInputType.emailAddress,
              errorText: _emailError,
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
            SizedBox(height: SizeConfig.scaleHeight(20)),
            TextFieldApp(
              hint: 'Password',
              textEditingController: _passwordTextEditingController,
              icon: Icons.lock_outline,
              obscureText: true,
              errorText: _passwordError,
            ),
            SizedBox(height: SizeConfig.scaleHeight(20)),
            Container(
              alignment: AlignmentDirectional.centerStart,
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: DropdownButton(
                underline: Text(''),
                hint: Row(
                  children: [
                    SizedBox(width: SizeConfig.scaleWidth(15)),
                    Icon(Icons.location_city, color: Colors.grey.shade400),
                    SizedBox(width: SizeConfig.scaleWidth(5)),
                    TextAppStyle(
                      text: ' choose your city',
                      color: Colors.grey.shade400,
                      fontSize: SizeConfig.scaleTextFont(18),
                    ),
                    SizedBox(width: SizeConfig.scaleWidth(10)),
                  ],
                ),
                isExpanded: true,
                value: dropDownChoose,
                onChanged: (value) {
                  dropDownChoose = value;
                },
                items: []
                    .map((city) => DropdownMenuItem(
                          onTap: () {
                            setState(() {
                              id = city.id;
                              cityName = city.nameEn;
                            });
                          },
                          child: Text(city.nameEn),
                          value: city,
                        ))
                    .toList(),
              ),
            ),
            SizedBox(height: SizeConfig.scaleHeight(30)),
            TextAppStyle(
              text: 'Update fashion style',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            SizedBox(height: SizeConfig.scaleHeight(10)),
            Row(
              children: [
                Radio(
                    activeColor: Colors.red,
                    value: 'F',
                    groupValue: _groupValue,
                    onChanged: (String? value) {
                      _groupValue = value!;
                      setState(() {});
                    }),
                TextAppStyle(text: 'Female'),
                SizedBox(width: SizeConfig.scaleWidth(20)),
                Radio(
                    activeColor: Colors.red,
                    value: 'M',
                    groupValue: _groupValue,
                    onChanged: (String? value) {
                      _groupValue = value!;
                      setState(() {});
                    }),
                TextAppStyle(text: 'Male'),
              ],
            ),
            Spacer(),
            ElevatedButtonCustom(function: () async {}, text: 'Sign Up '),
            SizedBox(height: SizeConfig.scaleHeight(20)),
          ],
        ),
      ),
    ));
  }

  bool checkMobileNumber() {
    if (_mobileTextEditingController.text.startsWith('56') ||
        _mobileTextEditingController.text.startsWith('59')) {
      return true;
    }
    Helpers.showSnackBar(
        context: context,
        message: 'please Enter correct mobile number',
        error: true);
    return false;
  }

  void checkError() {
    setState(() {
      _emailError = _emailTextEditingController.text.isNotEmpty
          ? null
          : 'Enter correct email';
      _mobileError = _mobileTextEditingController.text.isNotEmpty
          ? null
          : 'Enter mobile number';
      _passwordError = _passwordTextEditingController.text.isNotEmpty
          ? null
          : 'Enter password';
    });
  }

  bool checkData() {
    if (_emailTextEditingController.text.isNotEmpty) {
      if (_mobileTextEditingController.text.isNotEmpty && checkMobileNumber()) {
        if (_passwordTextEditingController.text.isNotEmpty) {
          if (_groupValue.isNotEmpty) {
            if (dropDownChoose != null) {
              checkError();
              /*Helpers.showSnackBar(context: context, message: 'success');*/
              return true;
            } else
              Helpers.showSnackBar(
                  context: context,
                  message: 'Please choose your city',
                  error: true);
            return false;
          } else
            Helpers.showSnackBar(
                context: context,
                message: 'Please choose your fashion style',
                error: true);
          return false;
        } else
          checkError();
        Helpers.showSnackBar(
            context: context, message: 'Please Enter Password', error: true);
        return false;
      } else
        checkError();
      Helpers.showSnackBar(
          context: context, message: 'Please Enter mobile number', error: true);
      return false;
    } else
      checkError();
    Helpers.showSnackBar(
        context: context, message: 'Please Enter correct Email', error: true);

    return false;
  }
}
