import 'package:flutter/material.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_appbar.dart';
import 'package:olyoli/Widgets/custom_button.dart';
import 'package:olyoli/Widgets/text_field_input.dart';

class ShortsUpload extends StatefulWidget {
  const ShortsUpload({Key? key}) : super(key: key);

  @override
  State<ShortsUpload> createState() => _ShortsUploadState();
}

class _ShortsUploadState extends State<ShortsUpload> {
  final TextEditingController _title = TextEditingController();


  String? topicValue;
  String? languageValue;
  List<String> topic = [
    'Topic1',
    'Topic2',
    'Topic3',
    'Topic4',
    'Topic5',
    'Topic6'

  ];
  List<String> language = [
    'Tamil',
    'English',
    'Hindi',
  ];

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
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  padding: EdgeInsets.only(top: 50),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Create shorts",
                        style: bottomButtonText,
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing",
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
                        "Upload video",
                        style: legelText(FontWeight.w700),
                      ),
                      Text(
                        "Max 1080 x 1920 Pixels. Maximum File Size 25MB",
                        style: fontTest(FontWeight.w400),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      TextFieldInput(
                        textEditingController: _title,
                        hintText: "Title *",
                        textInputType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4, top: 8),

                        child: DropdownButtonFormField(
                          style: inputText,
                          decoration: InputDecoration(
                            hintStyle: inputText,
                            isDense: true,
                            hintText: "Choose topic *",
                            border: inputBorder,
                            focusedBorder: inputBorder,
                            enabledBorder: inputBorder,
                            filled: true,
                            fillColor: Color.fromRGBO(247, 247, 247, 1),
                            contentPadding:
                            const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          ),
                          value: topicValue,
                          onChanged: (String? Value) {
                            setState(() {
                              topicValue = Value!;
                            });
                          },
                          items: topic
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4, top: 4),

                        child: DropdownButtonFormField(
                          style: inputText,
                          decoration: InputDecoration(
                            hintStyle: inputText,
                            isDense: true,
                            hintText: "Choose language *",
                            border: inputBorder,
                            focusedBorder: inputBorder,
                            enabledBorder: inputBorder,
                            filled: true,
                            fillColor: Color.fromRGBO(247, 247, 247, 1),
                            contentPadding:
                            const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          ),
                          value: languageValue,
                          onChanged: (String? Value) {
                            setState(() {
                              languageValue = Value!;
                            });
                          },
                          items: language
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
                      SizedBox(height: 19,),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 42),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
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
      ),
    );
  }
}
