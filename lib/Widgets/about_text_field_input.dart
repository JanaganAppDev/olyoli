import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olyoli/Widgets/const.dart';

class AboutTextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;


  const AboutTextFieldInput(
      {Key? key,
        required this.textEditingController,
        required this.hintText,
        required this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder =
    OutlineInputBorder(borderSide: BorderSide(width: 1,color:Color.fromRGBO(204, 204, 204, 0.80)),borderRadius: BorderRadius.all(Radius.circular(0.0)),);
    return TextFormField(
      style: inputText,
      controller: textEditingController,
      inputFormatters: [
        LengthLimitingTextInputFormatter(250),
      ],
      maxLines: 4,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        fillColor: Color.fromRGBO(247, 247, 247, 1),
        contentPadding: const EdgeInsets.symmetric(vertical:10,horizontal: 8),
      ),
      keyboardType: textInputType,
    );
  }
}