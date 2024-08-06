import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle inputText = TextStyle(
  color: Color.fromRGBO(45, 45, 45, 1),
  fontSize: 8,
  fontWeight: FontWeight.w300,
  fontFamily: 'Poppins',
);
TextStyle legelText(dynamic fontWeight) {
  return  TextStyle(
    color: Color(0xff000000),
    fontSize: 8,
    fontWeight: fontWeight,
    fontFamily: 'Poppins',
    overflow: TextOverflow.ellipsis
  );
}
TextStyle aboutText(dynamic fontWeight) {
  return  TextStyle(
      color: Color(0xff2d2d2d),
      fontSize: 8,
      fontWeight: fontWeight,
      fontFamily: 'Poppins',
      overflow: TextOverflow.ellipsis
  );
}

TextStyle topButtonText = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w700,
  fontFamily: 'Poppins',
);

TextStyle bottomButtonText = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w700,
  fontFamily: 'Poppins',
);

TextStyle headerFont = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontFamily: 'Poppins',
  fontSize: 42,
);

TextStyle headBotText = TextStyle(
  color: Color.fromRGBO(0, 0, 0, 1),
  fontSize: 12,
  fontWeight: FontWeight.w200,
  fontFamily: 'Poppins',
);

TextStyle fontTest(dynamic fontWeight) {
  return TextStyle(

    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 6,
    fontWeight: fontWeight,
    fontFamily: 'Poppins',
  );
}

TextStyle describ(dynamic fontWeight) {
  return TextStyle(
    color: Color(0xffffffff),
    fontSize: 8,
    fontWeight: fontWeight,
    fontFamily: 'Poppins',
  );
}

Widget custButton() {
  return ElevatedButton(
        child: Row(
      children: [
        Container(
          width: 8,
          height: 8,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            // child: Text(label[0].toUpperCase()),
          ),
        ),
        Text(
          "Live",
          style: TextStyle(
              color: Colors.white, fontSize: 5, fontWeight: FontWeight.w500),
        ),
      ],
    ),
    onPressed: () {},
  );
}


