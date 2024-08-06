import 'package:flutter/material.dart';
import 'package:olyoli/Screens/CreateLive/create_live_screen.dart';
import 'package:olyoli/Widgets/about_text_field_input.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_appbar.dart';
import 'package:olyoli/Widgets/custom_button.dart';
import 'package:olyoli/Widgets/text_field_input.dart';

class AccountProfile extends StatefulWidget {
  const AccountProfile({Key? key}) : super(key: key);

  @override
  State<AccountProfile> createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _about = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide:
      BorderSide(width: 1, color: Color.fromRGBO(204, 204, 204, 0.80)),
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
    );
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 50),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Account Profile",
                        style: bottomButtonText,
                      ),
                      Text(
                        "Please complete your profile in order to create short videos",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 30,

                        ),
                      ),
                      Text(
                        "Upload profile picture",
                        style: legelText(FontWeight.w700),
                      ),
                      Text(
                        "250 x 250 Pixels. Maximum File Size 2MB",
                        style: fontTest(FontWeight.w400),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      TextFieldInput(
                        textEditingController: _userName,
                        hintText: "User Name *",
                        textInputType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      AboutTextFieldInput(
                        textEditingController: _about,
                        hintText: "Write about your self in 250 characters *",
                        textInputType: TextInputType.multiline,
                      ),
                      SizedBox(height: 8,),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 42),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8,horizontal: 5.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text:TextSpan(
                          text: 'By Create Shorts profile, you agree to our',
                          style: fontTest(FontWeight.w300),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Terms and Privacy Policy.',
                              style: fontTest(FontWeight.w700),
                            ),
                            TextSpan(
                              text: 'You may receive email notifications from us to verify your profile and can opt out at anytime.',
                              style: fontTest(FontWeight.w300),
                            ),

                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateLive()));
                      },
                      child: CustomButton(
                        text: "Create",
                        bgColors: Colors.black,
                        style: topButtonText,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
