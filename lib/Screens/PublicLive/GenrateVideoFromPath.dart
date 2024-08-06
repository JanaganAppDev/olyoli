import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olyoli/Screens/MyProfile/my_profile_screen.dart';
import 'package:olyoli/Screens/UserProfile/user_profile_screen.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class GenrateVideoFrompath extends StatefulWidget {
  final String path;

  GenrateVideoFrompath(this.path);

  @override
  _GenrateVideoFrompathState createState() => _GenrateVideoFrompathState();
}

class _GenrateVideoFrompathState extends State<GenrateVideoFrompath> {
  var uint8list;
  bool loading = true;

  @override
  void initState() {
    genrateThumb();
    print(widget.path);
    super.initState();
  }

  genrateThumb() async {
    await VideoThumbnail.thumbnailData(
      video: widget.path,
      imageFormat: ImageFormat.JPEG,
      maxHeight: 107,
      maxWidth: 147,
      // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
      quality: 100,
    ).then((value) {
      setState(() {
        uint8list = value;
        print(uint8list.toString());
        print("sample");
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: /*loading ? CupertinoActivityIndicator()
          : */InkWell(
              onTap: () {
                // Get.to(VideoPlayer(widget.path));
              },
              child: Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 147,
                      height: 107,
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Container(
                            foregroundDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  // Colors.black,
                                  Colors.black.withOpacity(0.7),
                                  // Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.2),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(
                                image:  AssetImage("${widget.path}"),
                                //   image: MemoryImage(uint8list),
                                  fit: BoxFit.cover),
                            ),
                          ),
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
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipOval(
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    color: Color(0xffCCCCCC),
                                    child: Icon(
                                      Icons.person,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 38,
                                height: 12,
                                child: Material(
                                  color: Colors.black,
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
                                    // height: 0,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => UserProfile(),
                                        ),
                                      );
                                    },
                                    padding: EdgeInsets.symmetric(vertical: 0),
                                    child: Text(
                                      "Join now",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 6,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Container(
                                color: Colors.black38,
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 26,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "Electronics",
                                    textAlign: TextAlign.left,
                                    style: describ(FontWeight.w300),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Starts on: 5th August 2023 @ 4:00PM IST",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: describ(FontWeight.w500),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Popular belief, Lorem is simply random text.",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: describ(FontWeight.w700),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Gluetron eBusiness, India.",
                                    textAlign: TextAlign.left,
                                    style: describ(FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
