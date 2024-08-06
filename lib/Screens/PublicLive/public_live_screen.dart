import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:olyoli/Screens/PublicLive/GenrateVideoFromPath.dart';
import 'package:olyoli/Screens/PublicShorts/GenrateShortVideoFromPath.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:olyoli/Widgets/home_appbar.dart';

class PublicLive extends StatefulWidget {
  const PublicLive({Key? key}) : super(key: key);

  @override
  State<PublicLive> createState() => _PublicLiveState();
}

class _PublicLiveState extends State<PublicLive> {
  var box = GetStorage();
  bool loadingVideos = false;
/*  List allVideos = [
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
      print(true);
      loadingVideos = true;
    } else {
      print(false);
      loadingVideos = false;
    }
    print(allVideos.length);
    print("live");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HomeAppBar(
          selected: true,
        ),
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
          /*child: Container(
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
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allVideos.length,

                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                        // padding: const EdgeInsets.only(right: 3.0),
                        child: GenrateVideoFrompath(allVideos[index]),
                      );
                    },
                    *//* children: <Widget>[
                      Container(
                        child:
                            *//**//*loadingVideos ? Center(
                    child: CupertinoActivityIndicator(),
                  ):*//**//*
                            Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: GenrateVideoFrompath(allVideos[0]),
                        ),
                      ),
                      Container(
                        child:
                            *//**//* loadingVideos ? Center(
                    child: CupertinoActivityIndicator(),
                  ):*//**//*
                            Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: GenrateVideoFrompath(allVideos[0]),
                        ),
                      ),
                      Container(
                        child:
                            *//**//* loadingVideos ? Center(
                    child: CupertinoActivityIndicator(),
                  ):*//**//*
                            Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: GenrateVideoFrompath(allVideos[0]),
                        ),
                      ),
                      //your widget items here
                    ],*//*
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
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
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allVideos.length,

                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                        // padding: const EdgeInsets.only(right: 3.0),
                        child: GenrateVideoFrompath(allVideos[index]),
                      );
                    },
                    *//* children: <Widget>[
                      Container(
                        child:
                            *//**//*loadingVideos ? Center(
                    child: CupertinoActivityIndicator(),
                  ):*//**//*
                            Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: GenrateVideoFrompath(allVideos[0]),
                        ),
                      ),
                      Container(
                        child:
                            *//**//* loadingVideos ? Center(
                    child: CupertinoActivityIndicator(),
                  ):*//**//*
                            Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: GenrateVideoFrompath(allVideos[0]),
                        ),
                      ),
                      Container(
                        child:
                            *//**//* loadingVideos ? Center(
                    child: CupertinoActivityIndicator(),
                  ):*//**//*
                            Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: GenrateVideoFrompath(allVideos[0]),
                        ),
                      ),
                      //your widget items here
                    ],*//*
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
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
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allVideos.length,

                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                        // padding: const EdgeInsets.only(right: 3.0),
                        child: GenrateVideoFrompath(allVideos[index]),
                      );
                    },

                  ),
                ),
                SizedBox(
                  height: 15,
                ),
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
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allVideos.length,

                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                        // padding: const EdgeInsets.only(right: 3.0),
                        child: GenrateVideoFrompath(allVideos[index]),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
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
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allVideos.length,

                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                        // padding: const EdgeInsets.only(right: 3.0),
                        child: GenrateVideoFrompath(allVideos[index]),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),*/
        ),
      ),
    );
  }
}
