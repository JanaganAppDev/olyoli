import 'package:flutter/material.dart';
import 'package:olyoli/Widgets/about_text_field_input.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_appbar.dart';
import 'package:olyoli/Widgets/custom_button.dart';
import 'package:olyoli/Widgets/text_field_input.dart';

class CreateLive extends StatefulWidget {
  const CreateLive({Key? key}) : super(key: key);

  @override
  State<CreateLive> createState() => _CreateLiveState();
}

class _CreateLiveState extends State<CreateLive> {

  final TextEditingController _title = TextEditingController();
  final TextEditingController _location = TextEditingController();
  final TextEditingController _date = TextEditingController();
  final TextEditingController _startTime = TextEditingController();
  final TextEditingController _endTime = TextEditingController();
  final TextEditingController _about = TextEditingController();
  final TextEditingController _note = TextEditingController();

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
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              SingleChildScrollView(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Create Live",
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
                        "Upload cover picture",
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
                        textEditingController: _title,
                        hintText: "Title *",
                        textInputType: TextInputType.text,
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
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Padding(
                              padding:
                              const EdgeInsets.only(bottom: 4, right: 4, top: 4),
                              child: TextFieldInput(
                                textEditingController: _location,
                                hintText: "Location *",
                                textInputType: TextInputType.text,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding:
                              const EdgeInsets.only(bottom: 4, left: 4, top: 4),
                              child: TextFieldInput(
                                textEditingController: _date,
                                hintText: "Date *",
                                textInputType: TextInputType.text,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Padding(
                              padding:
                              const EdgeInsets.only(bottom: 8, right: 4, top: 4),
                              child: TextFieldInput(
                                textEditingController: _startTime,
                                hintText: "Start time *",
                                textInputType: TextInputType.text,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding:
                              const EdgeInsets.only(bottom: 8, left: 4, top: 4),
                              child: TextFieldInput(
                                textEditingController: _endTime,
                                hintText: "End Time *",
                                textInputType: TextInputType.text,
                              ),
                            ),
                          ),
                        ],
                      ),
                      AboutTextFieldInput(
                        textEditingController: _about,
                        hintText: "Write about this session in 250 characters *",
                        textInputType: TextInputType.multiline,
                      ),
                      SizedBox(height: 8,),
                      AboutTextFieldInput(
                        textEditingController: _note,
                        hintText: "Note for participants in 250 characters *",
                        textInputType: TextInputType.multiline,
                      ),
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
                          text: 'By Create live, you agree to our',
                          style: fontTest(FontWeight.w300),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Terms and Privacy Policy.',
                              style: fontTest(FontWeight.w700),
                            ),
                            TextSpan(
                              text: 'You may receive email notifications from us to verify your live session and can opt out at anytime.',
                              style: fontTest(FontWeight.w300),
                            ),

                          ],
                        ),
                      ),
                    ),
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
    );
  }
}
