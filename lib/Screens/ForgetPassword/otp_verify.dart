import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olyoli/Screens/ForgetPassword/confirm_password.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_appbar.dart';
import 'package:olyoli/Widgets/custom_button.dart';
import 'package:pinput/pinput.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({Key? key}) : super(key: key);

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 35,
      height: 30,
      textStyle: TextStyle(
          fontSize: 12,
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w200),
      decoration: BoxDecoration(

        border: Border.all(color: Color(0xffCCCCCC)),
        borderRadius: BorderRadius.circular(0),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      // resizeToAvoidBottomInset : false,
      // appBar: CustomAppBar(),
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
                flex: 0,
                child: Container(),
              ),
              const SizedBox(
                height: 40,
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
                "Please Enter the OTP",
                style: headBotText,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // width: 10,
                width: double.infinity,
                height: 40,
                // padding: EdgeInsets.all(10),
                child: Pinput(
                  separator: Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                  length: 7,
                  defaultPinTheme: defaultPinTheme,
                  // focusedPinTheme: focusedPinTheme,
                  // submittedPinTheme: submittedPinTheme,
                  // disabledPinTheme: defaultPinTheme,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmPassword(),
                    ),
                  );
                },
                child:  CustomButton(
                  text: "Verify",
                  bgColors: Colors.black,
                  style: topButtonText,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(
                flex: 1,
                child: Container(),
              ),
              InkWell(
                onTap: () {},
                child: CustomButton(
                  text: "Cancel",
                  bgColors: Colors.white,
                  style: bottomButtonText,
                  border: new Border.all(color: Colors.black,width: 1.0),
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
