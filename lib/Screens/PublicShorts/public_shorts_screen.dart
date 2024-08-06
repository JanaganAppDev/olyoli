import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olyoli/Screens/PublicLive/GenrateVideoFromPath.dart';
import 'package:olyoli/Screens/PublicShorts/GenrateShortVideoFromPath.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/home_appbar.dart';

class PublicShorts extends StatefulWidget {
  const PublicShorts({Key? key}) : super(key: key);

  @override
  State<PublicShorts> createState() => _PublicShortsState();
}

class _PublicShortsState extends State<PublicShorts> {

  bool loadingVideos = true;
  /*List allVideos = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  ];*/
  List allVideos = [
    'assets/images/background.jpeg',
    'assets/images/background.jpeg',
    'assets/images/background.jpeg',
    'assets/images/background.jpeg',
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
        appBar: HomeAppBar(selected: false,),
        body: SingleChildScrollView(
          child:Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allVideos.length,

                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                        // padding: const EdgeInsets.only(right: 3.0),
                        child: GenrateShortVideoFrompath(allVideos[index]),
                      );
                    },
                  ),
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allVideos.length,

                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                        // padding: const EdgeInsets.only(right: 3.0),
                        child: GenrateShortVideoFrompath(allVideos[index]),
                      );
                    },
                  ),
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allVideos.length,

                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                        // padding: const EdgeInsets.only(right: 3.0),
                        child: GenrateShortVideoFrompath(allVideos[index]),
                      );
                    },
                  ),
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allVideos.length,

                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                        // padding: const EdgeInsets.only(right: 3.0),
                        child: GenrateShortVideoFrompath(allVideos[index]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}