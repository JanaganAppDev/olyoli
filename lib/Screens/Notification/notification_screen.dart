import 'package:flutter/material.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_appbar.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Notifications",
                  style: bottomButtonText,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                // flex: 1,
                child: Container(
                  // width:200,
                  child: DefaultTabController(
                    length: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // constraints: BoxConstraints.expand(height: 20,width: 700),
                          child: TabBar(
                            indicatorWeight: 1,
                            indicator: UnderlineTabIndicator(
                                borderSide: BorderSide(
                                    width: 1.0, color: Color(0xff2d2d2d)),
                                insets: EdgeInsets.symmetric(
                                    horizontal: 23.0, vertical: 15)),
                            tabs: [
                              Tab(
                                child: Text(
                                  "FAQ",
                                  style: legelText(FontWeight.w700),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Likes",
                                  style: legelText(FontWeight.w700),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Follows",
                                  style: legelText(FontWeight.w700),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "General",
                                  style: legelText(FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(children: [
                            Container(
                              padding: const EdgeInsets.only(top: 22),
                              child: ListView(
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 0),
                                    decoration: BoxDecoration(
                                      // border: border,
                                      borderRadius:
                                          new BorderRadius.circular(0.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 52,
                                          color: Color(0xffF7F7F7),
                                          child: const Center(
                                              child: Icon(Icons.person)),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.3,
                                            height: 52,
                                            color: Color(0xffF7F7F7),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("Notification"),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "1 minute",
                                                      style: TextStyle(
                                                          fontSize: 4,
                                                          color:
                                                              Color(0xff2D2D2D),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontFamily:
                                                              'Poppins'),
                                                    ),
                                                    Icon(
                                                      Icons.more_vert,
                                                      color: Color(0xff2D2D2D),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                    decoration: BoxDecoration(
                                      // border: border,
                                      borderRadius:
                                      new BorderRadius.circular(0.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 52,
                                          color: Color(0xffF7F7F7),
                                          child: const Center(
                                              child: Icon(Icons.person)),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width /
                                                1.3,
                                            height: 52,
                                            color: Color(0xffF7F7F7),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text("Notification"),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "1 minute",
                                                      style: TextStyle(
                                                          fontSize: 4,
                                                          color:
                                                          Color(0xff2D2D2D),
                                                          fontWeight:
                                                          FontWeight.w300,
                                                          fontFamily:
                                                          'Poppins'),
                                                    ),
                                                    Icon(
                                                      Icons.more_vert,
                                                      color: Color(0xff2D2D2D),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                    decoration: BoxDecoration(
                                      // border: border,
                                      borderRadius:
                                      new BorderRadius.circular(0.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 52,
                                          color: Color(0xffF7F7F7),
                                          child: const Center(
                                              child: Icon(Icons.person)),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width /
                                                1.3,
                                            height: 52,
                                            color: Color(0xffF7F7F7),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text("Notification"),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "1 minute",
                                                      style: TextStyle(
                                                          fontSize: 4,
                                                          color:
                                                          Color(0xff2D2D2D),
                                                          fontWeight:
                                                          FontWeight.w300,
                                                          fontFamily:
                                                          'Poppins'),
                                                    ),
                                                    Icon(
                                                      Icons.more_vert,
                                                      color: Color(0xff2D2D2D),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                    decoration: BoxDecoration(
                                      // border: border,
                                      borderRadius:
                                      new BorderRadius.circular(0.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 52,
                                          color: Color(0xffF7F7F7),
                                          child: const Center(
                                              child: Icon(Icons.person)),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width /
                                                1.3,
                                            height: 52,
                                            color: Color(0xffF7F7F7),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text("Notification"),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "1 minute",
                                                      style: TextStyle(
                                                          fontSize: 4,
                                                          color:
                                                          Color(0xff2D2D2D),
                                                          fontWeight:
                                                          FontWeight.w300,
                                                          fontFamily:
                                                          'Poppins'),
                                                    ),
                                                    Icon(
                                                      Icons.more_vert,
                                                      color: Color(0xff2D2D2D),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                    decoration: BoxDecoration(
                                      // border: border,
                                      borderRadius:
                                      new BorderRadius.circular(0.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 52,
                                          color: Color(0xffF7F7F7),
                                          child: const Center(
                                              child: Icon(Icons.person)),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width /
                                                1.3,
                                            height: 52,
                                            color: Color(0xffF7F7F7),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text("Notification"),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "1 minute",
                                                      style: TextStyle(
                                                          fontSize: 4,
                                                          color:
                                                          Color(0xff2D2D2D),
                                                          fontWeight:
                                                          FontWeight.w300,
                                                          fontFamily:
                                                          'Poppins'),
                                                    ),
                                                    Icon(
                                                      Icons.more_vert,
                                                      color: Color(0xff2D2D2D),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                    decoration: BoxDecoration(
                                      // border: border,
                                      borderRadius:
                                      new BorderRadius.circular(0.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 52,
                                          color: Color(0xffF7F7F7),
                                          child: const Center(
                                              child: Icon(Icons.person)),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width /
                                                1.3,
                                            height: 52,
                                            color: Color(0xffF7F7F7),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text("Notification"),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "1 minute",
                                                      style: TextStyle(
                                                          fontSize: 4,
                                                          color:
                                                          Color(0xff2D2D2D),
                                                          fontWeight:
                                                          FontWeight.w300,
                                                          fontFamily:
                                                          'Poppins'),
                                                    ),
                                                    Icon(
                                                      Icons.more_vert,
                                                      color: Color(0xff2D2D2D),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                                child: Text(
                              "soon...",
                              style: TextStyle(fontSize: 50),
                            )),
                            Center(
                                child: Text(
                              "soon...",
                              style: TextStyle(fontSize: 50),
                            )),
                            Center(
                                child: Text(
                              "soon...",
                              style: TextStyle(fontSize: 50),
                            )),
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
