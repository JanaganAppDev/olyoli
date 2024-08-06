import 'package:flutter/material.dart';
import 'package:olyoli/Widgets/const.dart';

class PasswordFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPassword;
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffix;

  const PasswordFieldInput(
      {Key? key,
        required this.textEditingController,
        this.isPassword =true,
        required this.hintText,
        this.suffix,
        required this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder =
    OutlineInputBorder(borderSide: BorderSide(width: 1,color:Color.fromRGBO(204, 204, 204, 0.80)),borderRadius: BorderRadius.all(Radius.circular(0.0)),);
    return TextFormField(
      style: inputText,
      controller: textEditingController,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        suffixIconConstraints: BoxConstraints(
          minWidth: 2,
          minHeight: 2,
        ),
        suffixIcon: suffix,
        filled: true,
        fillColor: Color.fromRGBO(247, 247, 247, 1),
        contentPadding: const EdgeInsets.symmetric(vertical:10,horizontal: 8),
      ),
      keyboardType: textInputType,
      obscureText: isPassword,
    );
  }
}
