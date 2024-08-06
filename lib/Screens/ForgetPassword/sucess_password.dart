import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olyoli/Screens/LoginScreen/login_screen.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_button.dart';

class SucessPassword extends StatelessWidget {
  const SucessPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child:  Text(
                  "You have been created new password",
                  style: headBotText,
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: const Text(
                  "Successfully",
                  style: TextStyle(fontSize:14,fontWeight: FontWeight.w700, fontFamily: 'poppins'),
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              Flexible(
                flex:1,
                child: Container(),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: CustomButton(
                  text: "Please login into your account",
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
