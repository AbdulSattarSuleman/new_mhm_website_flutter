import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;
    return isDesktop(context)
        ? Container(
            width: 100.w,
            height: 30.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        "https://res.cloudinary.com/abdulsattar/image/upload/v1646153732/MHM/images/image_o3djqm.png"))),
          )
        : Container(
            width: 100.w,
            // height: 30.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://res.cloudinary.com/abdulsattar/image/upload/v1646153732/MHM/images/image_o3djqm.png"))),
          );
  }
}
