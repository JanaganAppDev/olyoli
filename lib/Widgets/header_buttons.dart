import 'package:flutter/material.dart';
import 'package:olyoli/Screens/PublicLive/public_live_screen.dart';
import 'package:olyoli/Screens/PublicShorts/public_shorts_screen.dart';

class HeadButton extends StatelessWidget {
  const HeadButton({Key? key, required this.selected}) : super(key: key);

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return selected
        ? Flexible(
      flex: 2,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: SizedBox(
              width: 33,
              height: 14,
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
                  height: 0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicLive(),
                      ),
                    );
                  },
                  padding:
                  EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                  child: Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff29F929),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          "Live",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 5,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
         /* Padding(
            padding: const EdgeInsets.only(left: 5),
            child: SizedBox(
              width: 33,
              height: 14,
              child: Material(
                color: Colors.white,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicShorts(),
                      ),
                    );
                  },
                  padding:
                  EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                  child: Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.play_circle_outline,
                              color: Colors.black, size: 8),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 1),
                        child: Text(
                          "Shorts",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 5,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),*/
        ],
      ),
    ):Flexible(
            flex: 2,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    width: 33,
                    height: 14,
                    child: Material(
                      color: Colors.white,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PublicLive(),
                            ),
                          );
                        },
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 6),
                              child: Text(
                                "Live",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 5,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                /*Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    width: 33,
                    height: 14,
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
                        height: 0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PublicShorts(),
                            ),
                          );

                        },
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(Icons.play_circle_outline,
                                    color: Colors.white, size: 8),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 1),
                              child: Text(
                                "Shorts",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 5,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),*/
              ],
            ),
          );
  }
}

Widget liveChip(String label, Color color, Color bg) {
  return SizedBox(
    width: 33,
    height: 14,
    child: Material(
      color: bg,
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
        onPressed: () {},
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 4),
        child: Row(
          children: [
            Container(
              width: 8,
              height: 8,
              child: CircleAvatar(
                backgroundColor: color,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 6),
              child: Text(
                label,
                style: TextStyle(
                    color: color,
                    fontSize: 5,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget shortsChip(String label, Color color, Color bg) {
  return SizedBox(
    width: 33,
    height: 14,
    child: Material(
      color: bg,
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
        onPressed: () {},
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 4),
        child: Row(
          children: [
            Container(
              width: 8,
              height: 8,
              child: CircleAvatar(
                backgroundColor: bg,
                child: Icon(Icons.play_circle_outline, color: color, size: 8),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 1),
              child: Text(
                label,
                style: TextStyle(
                    color: color, fontSize: 5, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
