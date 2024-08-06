import 'package:flutter/material.dart';
import 'package:olyoli/Screens/MyProfile/my_profile_screen.dart';
import 'package:olyoli/Widgets/about_text_field_input.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_appbar.dart';
import 'package:olyoli/Widgets/custom_button.dart';
import 'package:olyoli/Widgets/email_field_input.dart';
import 'package:olyoli/Widgets/password_field_input.dart';
import 'package:olyoli/Widgets/text_field_input.dart';

class MyProfileSetting extends StatefulWidget {
  const MyProfileSetting({Key? key}) : super(key: key);

  @override
  State<MyProfileSetting> createState() => _MyProfileSettingState();
}

class _MyProfileSettingState extends State<MyProfileSetting> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _fName = TextEditingController();
  final TextEditingController _lName = TextEditingController();
  final TextEditingController _about = TextEditingController();
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();


  bool _newObscure = true;
  bool _confirmObscure = true;
  bool active=false;

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
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My Profile settings",
                              style: bottomButtonText,
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {

                          },
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              color: Color(0xffF7F7F7),
                              border: Border.all(
                                  color: Color(0xffCCCCCCCC), width: 1),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Profile',style: legelText(FontWeight.w700),
                          textAlign: TextAlign.start,
                        ),
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
                      TextFieldInput(
                        textEditingController: _userName,
                        hintText: "User Name",
                        textInputType: TextInputType.text,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8, top: 8),

                        child: DropdownButtonFormField(
                          style: inputText,
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
                          )
                              .toList(),
                          isDense: true,
                        ),
                      ),
                      AboutTextFieldInput(
                        textEditingController: _about,
                        hintText: "Write about your self in 250 characters",
                        textInputType: TextInputType.multiline,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Container(
                                width: 60,
                                height: 19,
                                child: CustomButton(
                                  text: "Save Changes",
                                  bgColors: Colors.white,
                                  style: fontTest(FontWeight.w500),
                                  border: new Border.all(color: Colors.black,width: 1.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text('Login Credentials',style: legelText(FontWeight.w700),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      EmailFieldInput(
                        textEditingController: _emailController,
                        hintText: "New Email address",
                        textInputType: TextInputType.emailAddress,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Container(
                                width: 60,
                                height: 19,
                                child: CustomButton(
                                  text: "Save Changes",
                                  bgColors: Colors.white,
                                  style: fontTest(FontWeight.w500),
                                  border: new Border.all(color: Colors.black,width: 1.0),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                                hintText: "New Password",
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
                                hintText: "Confirm New Password",
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
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Container(
                                width: 60,
                                height: 19,
                                child: CustomButton(
                                  text: "Save Changes",
                                  bgColors: Colors.white,
                                  style: fontTest(FontWeight.w500),
                                  border: new Border.all(color: Colors.black,width: 1.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text('Privacy',style: legelText(FontWeight.w700),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        // padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              alignment: Alignment.center,
                              // height: 19,
                              color: Colors.black,
                              child: Text("In active my account",style: TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.w500),),
                            ),
                            InkWell(
                              onTap: ()async{
                                setState(() {
                                  active=!active;
                                });
                              },
                              child: Container(
                                width: 61,
                                height: 19,
                                child: CustomButton(
                                  text: active?"OFF":"ON",
                                  bgColors: Colors.white,
                                  style: fontTest(FontWeight.w500),
                                  border: new Border.all(color: Colors.black,width: 1.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
