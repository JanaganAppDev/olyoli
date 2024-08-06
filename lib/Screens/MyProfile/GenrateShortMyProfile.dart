import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olyoli/Widgets/const.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class GenrateShortMyProfile extends StatefulWidget {
  final String path;

  GenrateShortMyProfile(this.path);

  @override
  _GenrateShortMyProfileState createState() => _GenrateShortMyProfileState();
}

class _GenrateShortMyProfileState extends State<GenrateShortMyProfile> {
  var uint8list;
  bool loading = true;
  bool _like = false;

  @override
  void initState() {
    genrateThumb();
    super.initState();
  }

  genrateThumb() async {
    await VideoThumbnail.thumbnailData(
      video: widget.path,
      imageFormat: ImageFormat.JPEG,
      maxHeight: 141,
      maxWidth: 149,
      // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
      quality: 100,
    ).then((value) {
      uint8list = value;
      loading = false;

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child:/* loading
          ? CupertinoActivityIndicator()
          : */
      InkWell(
              onTap: () {
                // Get.to(VideoPlayer(widget.path));
              },
              child: Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 149,
                      height: 149,
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
                                    image:  AssetImage("assets/images/background.jpeg"),
                                    // image: MemoryImage(uint8list),
                                    fit: BoxFit.cover),

                            ),
                          ),
                          Container(
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
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 14,
                                height: 35,
                                child: Material(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                      color: Color(0xff010101),
                                    ),
                                  ),
                                  elevation: 0,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          InkWell(
                                            onTap: () async {
                                              setState(() {
                                                _like = !_like;
                                              });
                                            },
                                            child: _like
                                                ? Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 8,
                                            ): Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                              size: 8,
                                            ),
                                          ),
                                          Text("1.2 k",style: TextStyle(fontSize: 3, color: Colors.white),),
                                        ],
                                      ),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.message_outlined,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        Text("2 k",style: TextStyle(fontSize: 3, color: Colors.white),),
                                      ],
                                    ),

                                      // IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                                      // IconButton(onPressed: (){}, icon: Icon(Icons.add))
                                    ],
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
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 3.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
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
                                       "Popular belief, Lorem is simply random text.",
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8,bottom: 3),
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      width: 31,
                                      height: 10,
                                      child: Material(
                                        color: Color(0xffCCCCCC),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18.0),
                                          side: BorderSide(
                                            color: Color(0xffCCCCCC),
                                          ),
                                        ),
                                        elevation: 0,
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                          ),
                                          height: 0,
                                          onPressed: () {},
                                          padding: EdgeInsets.symmetric(vertical: 0),
                                          child: Text(
                                            "Edit",
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 6,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
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
