import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olyoli/Screens/RegisterScreen/register_screen.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/header_buttons.dart';

import '../Screens/LoginScreen/login_screen.dart';

typedef void StringCallback(String val);

class HomeAppBar extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  bool selected;

  HomeAppBar({Key? key, required this.selected,})  : preferredSize = Size.fromHeight(70.0), super(key:key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    print(currentIndex);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 21),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/olyoli_icon.png',
                      height: 24,
                      width: 24,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        "OLYOLI",
                        style: bottomButtonText,
                      ),
                    ),
                    HeadButton(
                      selected: widget.selected,
                    ),
                    // Flexible(
                    //   flex: 2,
                    //   child: Row(
                    //     children: [
                    //
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 5),
                    //         child: liveChip("Live", Colors.black, Colors.white),
                    //       ),
                    //       // liveChip("Live", Colors.black, Colors.white,currentIndex),
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 5),
                    //         child: shortsChip("Shorts", Colors.white, Colors.black),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Flexible(
                      flex: 0,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 33,
                            height: 14,
                            child: Material(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                  color: Color(0xff010101),
                                ),
                              ),
                              elevation: 0,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                height: 0,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));

                                },
                                padding: EdgeInsets.symmetric(vertical: 0),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Color(0xff010101),
                                    fontSize: 5,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: 33,
                            height: 14,
                            child: Material(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                  color: Color(0xff010101),
                                ),
                              ),
                              elevation: 0,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                height: 0,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
                                },
                                padding: EdgeInsets.symmetric(vertical: 0),
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    color: Color(0xff010101),
                                    fontSize: 5,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
