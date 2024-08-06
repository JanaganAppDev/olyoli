import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olyoli/Screens/CreateLive/create_live_screen.dart';
import 'package:olyoli/Screens/ForgetPassword/forget_password.dart';
import 'package:olyoli/Screens/PublicLive/public_live_screen.dart';
import 'package:olyoli/Screens/PublicShorts/public_shorts_screen.dart';
import 'package:olyoli/Screens/RegisterScreen/register_screen.dart';
import 'package:olyoli/Screens/Test/test_screen.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_appbar.dart';
import 'package:olyoli/Widgets/custom_button.dart';
import 'package:olyoli/Widgets/password_field_input.dart';

import 'package:olyoli/Widgets/email_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset : false,
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Container(
          padding:
              /*MediaQuery.of(context).size.width > webScreenSize
                ? EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 3)
                : */
              const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Image.asset(
                'assets/icons/olyoli_icon.png',
                height: 45,
                width: 45,
              ),
              Text(
                "OLYOLI",
                style: headerFont,
              ),
              const SizedBox(
                height: 30,
              ),
              EmailFieldInput(
                textEditingController: _emailController,
                hintText: "Email address",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              PasswordFieldInput(
                textEditingController: _passwordController,
                hintText: "Password",
                textInputType: TextInputType.text,
                isPassword: _obscureText,
                suffix:InkWell(
                  onTap: _toggle,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(
                      _obscureText
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
                /*IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _toggle,
                ),*/
              ),
              const SizedBox(
                height: 18,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PublicLive(),
                    ),
                  );
                },
                child: CustomButton(
                  text: "Login",
                  bgColors: Colors.black,
                  style: topButtonText,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgetPassword(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    "Forget Password ?",
                    style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400, fontFamily: 'Poppins', color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
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
                    child:  Text(
                      "Don't have an account? ",
                      style: headBotText,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child:  CustomButton(
                      text: "Register now",
                      bgColors: Colors.white,
                      style: bottomButtonText,
                      border: new Border.all(color: Colors.black,width: 1.0),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
              //textfield for email
            ],
          ),
        ),
      ),
    );
  }
}
