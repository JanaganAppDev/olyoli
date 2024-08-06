import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olyoli/Screens/ForgetPassword/otp_verify.dart';
import 'package:olyoli/Screens/LoginScreen/login_screen.dart';
import 'package:olyoli/Widgets/const.dart';

import 'package:olyoli/Widgets/custom_appbar.dart';
import 'package:olyoli/Widgets/custom_button.dart';
import 'package:olyoli/Widgets/email_field_input.dart';
import 'package:olyoli/Widgets/password_field_input.dart';
import 'package:olyoli/Widgets/text_field_input.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fName = TextEditingController();
  final TextEditingController _lName = TextEditingController();
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  bool _newObscure = true;
  bool _confirmObscure = true;

  String? dropDownValue;
  List<String> cityList = [
    'India',
    'Afghanistan',
    'Bhutan',
    'Bangladesh',
    'China',
    'Myanmar',
    'Nepal',
    'Pakistan',
    'Sri Lanka'
  ];

  void _newToggle() {
    setState(() {
      _newObscure = !_newObscure;
    });
  }

  void _confirmToggle() {
    setState(() {
      _confirmObscure = !_confirmObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide:
          BorderSide(width: 1, color: Color.fromRGBO(204, 204, 204, 0.80)),
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 1, child: Container()),
              Image.asset(
                'assets/icons/olyoli_icon.png',
                height: 45,
                width: 45,
              ),
              Text(
                "OLYOLI",
                style:headerFont,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 8, right: 4, top: 8),
                      child: TextFieldInput(
                        textEditingController: _fName,
                        hintText: "First Name",
                        textInputType: TextInputType.text,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 8, left: 4, top: 8),
                      child: TextFieldInput(
                        textEditingController: _lName,
                        hintText: "Last Name",
                        textInputType: TextInputType.text,
                      ),
                    ),
                  ),
                ],
              ),
              EmailFieldInput(
                textEditingController: _emailController,
                hintText: "Email address",
                textInputType: TextInputType.emailAddress,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 8, right: 4, top: 8),
                      child: PasswordFieldInput(
                        textEditingController: _newPassword,
                        hintText: "Password",
                        textInputType: TextInputType.text,
                        isPassword: _newObscure,
                        suffix: InkWell(
                          onTap: _newToggle,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              _newObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 8, left: 4, top: 8),
                      child: PasswordFieldInput(
                        textEditingController: _confirmPassword,
                        hintText: "Confirm Password",
                        textInputType: TextInputType.text,
                        isPassword: _confirmObscure,
                        suffix: InkWell(
                          onTap: _confirmToggle,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              _confirmObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 4),
                  child: DropdownButtonFormField(
                    style: inputText,
                    itemHeight: 48,
                    decoration: InputDecoration(
                      hintStyle: inputText,
                      isDense: true,
                      hintText: "Choose your country",
                      border: inputBorder,
                      focusedBorder: inputBorder,
                      enabledBorder: inputBorder,
                      filled: true,
                      fillColor: Color.fromRGBO(247, 247, 247, 1),
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    ),
                    /*underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),*/
                    value: dropDownValue,
                    onChanged: (String? Value) {
                      setState(() {
                        dropDownValue = Value!;
                      });
                    },
                    items: cityList
                        .map(
                          (cityTitle) => DropdownMenuItem(
                            value: cityTitle,
                            child: Text(
                              "$cityTitle",
                              style: inputText,
                            ),
                          ),
                        ).toList(),
                    menuMaxHeight: 300,
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:5,horizontal: 5.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text:TextSpan(
                    text: 'By Register, you agree to our ',
                    style: fontTest(FontWeight.w300),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Terms, Privacy Policy ',
                          style: fontTest(FontWeight.w700),
                      ),
                      TextSpan(
                          text: 'and ',
                          style: fontTest(FontWeight.w300),
                      ),
                      TextSpan(
                        text: 'Cookies Policy. ',
                        style: fontTest(FontWeight.w700),
                      ),
                      TextSpan(
                        text: 'You may receive email notifications from us and can opt out at anytime.',
                        style: fontTest(FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: CustomButton(
                  text: "Register",
                  bgColors: Colors.black,
                  style: topButtonText,
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: Text(
                      "Already have an account?",
                      style: headBotText,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: CustomButton(
                      text: "Login into your account",
                      bgColors: Colors.white,
                      style: bottomButtonText,
                      border: new Border.all(color: Colors.black, width: 1.0),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
