import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olyoli/Screens/MyProfile/GenrateShortMyProfile.dart';
import 'package:olyoli/Screens/MyProfile/my_profile_screen.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/custom_appbar.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>
    with SingleTickerProviderStateMixin {
  bool loadingVideos = true;
  List allVideos = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  ];

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
                            "Flora Jasmine",
                            style: bottomButtonText,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
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
                                  builder: (context) => MyProfile(),
                                ),
                              );
                            },
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                color: Color(0xffF7F7F7),
                                border: Border.all(
                                    color: Color(0xffCCCCCCCC), width: 1),
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
                          SizedBox(
                            width: 9,
                          ),
                          Container(
                            height: 60,
                            // alignment: Alignment.topLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                    SizedBox(
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
                                borderSide: BorderSide(width: 1.0,color: Color(0xff2d2d2d) ),
                                insets: EdgeInsets.symmetric(horizontal:20.0)
                            ),
                            tabs: [
                              Tab(
                                child: Text(
                                  "Shorts",
                                  style: legelText(FontWeight.w700),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Lives",
                                  style: legelText(FontWeight.w700),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Followers",
                                  style: legelText(FontWeight.w700),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Followings",
                                  style: legelText(FontWeight.w700),
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
                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Legal",
                                        style: legelText(FontWeight.w700),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Business Registration, Copyright, Trade Mark ..",
                                        style: legelText(FontWeight.w300),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: loadingVideos ? Center(
                                            child: CupertinoActivityIndicator(),
                                          ):Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:
                                            GenrateShortMyProfile(allVideos[0]),
                                          ),
                                        ),
                                        Container(
                                          child: loadingVideos ? Center(
                                            child: CupertinoActivityIndicator(),
                                          ):Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:
                                            GenrateShortMyProfile(allVideos[0]),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Legal",
                                        style: legelText(FontWeight.w700),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Business Registration, Copyright, Trade Mark ..",
                                        style: legelText(FontWeight.w300),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: loadingVideos ? Center(
                                            child: CupertinoActivityIndicator(),
                                          ):Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:
                                            GenrateShortMyProfile(allVideos[0]),
                                          ),
                                        ),
                                        Container(
                                          child: loadingVideos ? Center(
                                            child: CupertinoActivityIndicator(),
                                          ):Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:
                                            GenrateShortMyProfile(allVideos[0]),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Legal",
                                        style: legelText(FontWeight.w700),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Business Registration, Copyright, Trade Mark ..",
                                        style: legelText(FontWeight.w300),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: loadingVideos ? Center(
                                            child: CupertinoActivityIndicator(),
                                          ):Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:
                                            GenrateShortMyProfile(allVideos[0]),
                                          ),
                                        ),
                                        Container(
                                          child: loadingVideos ? Center(
                                            child: CupertinoActivityIndicator(),
                                          ):Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:
                                            GenrateShortMyProfile(allVideos[0]),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Legal",
                                        style: legelText(FontWeight.w700),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Business Registration, Copyright, Trade Mark ..",
                                        style: legelText(FontWeight.w300),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: loadingVideos ? Center(
                                            child: CupertinoActivityIndicator(),
                                          ):Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:
                                            GenrateShortMyProfile(allVideos[0]),
                                          ),
                                        ),
                                        Container(
                                          child: loadingVideos ? Center(
                                            child: CupertinoActivityIndicator(),
                                          ):Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:
                                            GenrateShortMyProfile(allVideos[0]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
