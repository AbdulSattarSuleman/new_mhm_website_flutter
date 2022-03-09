import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;
    return isDesktop(context)
        ? Container(
            color: Color(0xfff6f6f6),
            width: 100.w,
            child: Center(
              child: Image(
                  image: NetworkImage(
                      "https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/Transparent.png/:/rs=w:465,h:195,cg:true,m/cr=w:465,h:195/qt=q:95")),
            ),
          )
        : Container(
            margin: EdgeInsets.zero,
            color: Color(0xfff6f6f6),
            width: 100.w,
            child: Center(
              child: Image(
                  image: NetworkImage(
                      "https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/Transparent.png/:/rs=w:465,h:195,cg:true,m/cr=w:465,h:195/qt=q:95")),
            ),
          );
  }
}
