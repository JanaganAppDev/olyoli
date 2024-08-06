import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? bgColors;
  final TextStyle style;
  final BoxBorder? border;
  const CustomButton({Key? key,required this.text,required this.bgColors,required this.style,this.border}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 0),
      decoration:  BoxDecoration(
          border: border,
          borderRadius: new BorderRadius.circular(0.0),
          color: bgColors),
      child: Text(
        text,
        style: style,

      ),
    );
  }
}
