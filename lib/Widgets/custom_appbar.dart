import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding:
              /*MediaQuery.of(context).size.width > webScreenSize
                ? EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 3)
                : */
              const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Material(
                  child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  'assets/icons/Arrow_6.svg',
                  width: 22,
                  color: Color(0xff2D2D2D),
                ),
              )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                child: Text(
                  "Back",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff2D2D2D),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    /*return AppBar(
      title: Text(
        "Back",
        style: TextStyle(color: Colors.black),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: new SvgPicture.asset('assets/icons/Arrow_6.svg',height: 45,),
        // icon: new Image.asset('assets/icons/Arrow.png', scale: 0.5,),
        onPressed: () {},
        color: Colors.black,
      ),
    );*/
  }
}
