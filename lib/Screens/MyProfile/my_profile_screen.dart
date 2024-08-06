import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olyoli/Screens/CreateLive/create_live_screen.dart';
import 'package:olyoli/Screens/CreateShorts/create_shorts_screen.dart';
import 'package:olyoli/Screens/MyProfile/GenrateShortMyProfile.dart';
import 'package:olyoli/Screens/MyProfileSettings/myprofile_settlings_screen.dart';
import 'package:olyoli/Screens/Notification/notification_screen.dart';
import 'package:olyoli/Screens/ShortsUpload/shorts_upload_screen.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_appbar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile>
    with SingleTickerProviderStateMixin {
  bool loadingVideos = true;

  List allVideos = [
    'assets/images/background.jpeg',
    'assets/images/background.jpeg',
    'assets/images/background.jpeg',
    'assets/images/background.jpeg',
  ];

  int _selectedIndex = 1;

  /* List allVideos = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  ];*/

  @override
  initState() {
    fetchdata();
    // allVideos = box.read("allVideo") ?? [];
    setState(() {});
    super.initState();
  }

  Future<void> fetchdata() async {
    if (allVideos.length == 0) {
      loadingVideos = true;
    } else {
      loadingVideos = false;
    }
    print(allVideos.length);
  }

  @override
  Widget build(BuildContext context) {
    double orjWidth = MediaQuery.of(context).size.width;
    double cameraWidth = orjWidth / 25;
    double yourWidth = (orjWidth - cameraWidth) / 8;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Container(
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
                            "My Profile",
                            style: bottomButtonText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MyProfileSetting(),
                                    ),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipOval(
                                      child: Container(
                                        width: 23,
                                        height: 23,
                                        color: const Color(0xffd9d9d9),
                                        child: const Icon(
                                          Icons.settings,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyProfile(),
                                ),
                              );
                            },
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                color: const Color(0xffF7F7F7),
                                border: Border.all(
                                    color: const Color(0xffCCCCCCCC), width: 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    // color: Color(0xffd9d9d9),
                                    // child: Icon(
                                    //   Icons.person,
                                    //   size: 20,
                                    //   color: Colors.white,
                                    // ),
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Container(
                            height: 65,
                            // alignment: Alignment.topLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Flora Jasmine",
                                  overflow: TextOverflow.ellipsis,
                                  style: legelText(FontWeight.w500),
                                ),
                                Text(
                                  "@ Awesome vibe",
                                  overflow: TextOverflow.ellipsis,
                                  style: legelText(FontWeight.w700),
                                ),
                                Text(
                                  "florajasmine@gmail.com",
                                  overflow: TextOverflow.ellipsis,
                                  style: legelText(FontWeight.w200),
                                ),
                                Text(
                                  "France",
                                  overflow: TextOverflow.ellipsis,
                                  style: legelText(FontWeight.w500),
                                ),
                                Text(
                                  "1.2 Followers",
                                  overflow: TextOverflow.ellipsis,
                                  style: legelText(FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: 'ABOUT\n',
                          style: aboutText(FontWeight.w700),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  "ABOUT Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                              style: aboutText(FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                // flex: 1,
                child: Container(
                  // width:200,
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 200,
                          // constraints: BoxConstraints.expand(height: 20,width: 700),
                          child: TabBar(
                            indicatorWeight: 0.0,
                            isScrollable: true,
                            indicator:  const UnderlineTabIndicator(
                              borderSide: BorderSide(
                                  width: 1.0, color: Color(0xff2d2d2d)),
                              // insets: EdgeInsets.symmetric(horizontal:yourWidth)
                            ),
                            indicatorSize: TabBarIndicatorSize.label,
                            labelPadding: EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 0),
                            tabs: <Widget>[
                              Container(
                                width: yourWidth,
                                child: Tab(
                                  child: Center(
                                    child: Text(
                                      "Lives",
                                      style: legelText(FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: yourWidth,
                                child: Tab(
                                  child: Center(
                                    child: Text(
                                      "Followers",
                                      style: legelText(FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: yourWidth,
                                child: Tab(
                                  child: Center(
                                    child: Text(
                                      "Followings",
                                      style: legelText(FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(children: [
                            SingleChildScrollView(
                              child: Container(
                                padding: const EdgeInsets.only(top: 22),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Legal",
                                        style: legelText(FontWeight.w700),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Business Registration, Copyright, Trade Mark ..",
                                        style: legelText(FontWeight.w300),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 160,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: allVideos.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 5, 20, 0),
                                            // padding: const EdgeInsets.only(right: 3.0),
                                            child: GenrateShortMyProfile(
                                                allVideos[index]),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Legal",
                                        style: legelText(FontWeight.w700),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Business Registration, Copyright, Trade Mark ..",
                                        style: legelText(FontWeight.w300),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 160,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: allVideos.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 5, 20, 0),
                                            // padding: const EdgeInsets.only(right: 3.0),
                                            child: GenrateShortMyProfile(
                                                allVideos[index]),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Legal",
                                        style: legelText(FontWeight.w700),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Business Registration, Copyright, Trade Mark ..",
                                        style: legelText(FontWeight.w300),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 160,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: allVideos.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 5, 20, 0),
                                            // padding: const EdgeInsets.only(right: 3.0),
                                            child: GenrateShortMyProfile(
                                                allVideos[index]),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Legal",
                                        style: legelText(FontWeight.w700),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Business Registration, Copyright, Trade Mark ..",
                                        style: legelText(FontWeight.w300),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 160,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: allVideos.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 5, 20, 0),
                                            // padding: const EdgeInsets.only(right: 3.0),
                                            child: GenrateShortMyProfile(
                                                allVideos[index]),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Center(
                                child: Text(
                              "soon...",
                              style: TextStyle(fontSize: 50),
                            )),
                            const Center(
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
        bottomNavigationBar: Container(
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.black,
            /*borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),*/
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /* IconButton(
                enableFeedback: false,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateShort()));
                },
                icon: const Icon(
                  Icons.video_collection,
                  color: Colors.white,
                  size: 25,
                ),

              ),*/
              /*   IconButton(
                enableFeedback: false,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ShortsUpload()));

                },
                icon: const Icon(
                  Icons.video_call,
                  color: Colors.white,
                  size: 25,
                ),
              ),*/

              IconButton(
                enableFeedback: false,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Notifications()));
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountProfile()));
                },
                icon: const Icon(
                  Icons.live_tv,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyProfile()));
                },
                icon: const Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
