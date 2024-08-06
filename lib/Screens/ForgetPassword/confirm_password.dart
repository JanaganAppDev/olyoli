import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olyoli/Screens/ForgetPassword/sucess_password.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_button.dart';
import 'package:olyoli/Widgets/password_field_input.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({Key? key}) : super(key: key);

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  bool _newObscure = true;
  bool _confirmObscure = true;

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
                flex: 1,
                child: Container(),
              ),
              const SizedBox(
                height: 0,
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
                "Create new password",
                style: headBotText,
              ),
              const SizedBox(
                height: 20,
              ),
              PasswordFieldInput(
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
              const SizedBox(
                height: 16,
              ),
              PasswordFieldInput(
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
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SucessPassword(),
                    ),
                  );
                },
                child: CustomButton(
                  text: "Create",
                  bgColors: Colors.black,
                  style: topButtonText,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(
                flex: 3,
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
