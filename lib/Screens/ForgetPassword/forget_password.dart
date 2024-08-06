import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olyoli/Screens/ForgetPassword/otp_verify.dart';
import 'package:olyoli/Screens/LoginScreen/login_screen.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_appbar.dart';
import 'package:olyoli/Widgets/custom_button.dart';
import 'package:olyoli/Widgets/email_field_input.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/icons/olyoli_icon.png',
                height: 45,
                width: 45,
              ),
              Text(
                "OLYOLI",
                style:headerFont,
              ),
              Text(
                "Please Enter your registered email address",
                style: headBotText,
              ),
              const SizedBox(
                height: 10,
              ),
              EmailFieldInput(
                textEditingController: _emailController,
                hintText: "Email address",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpVerify(),
                    ),
                  );
                },
                child: CustomButton(
                  text: "Send OTP",
                  bgColors: Colors.black,
                  style: topButtonText,
                ),
              ),

              //textfield for email
            ],
          ),
        ),
      ),
    );
  }
}
