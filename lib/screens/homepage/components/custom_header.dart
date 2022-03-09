import 'package:flutter/material.dart';
import 'package:new_mhm_website/screens/prayerpage/prayer_time_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../constant.dart';
import '../home_screen.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;
    return isDesktop(context)
        ? Container(
            // Widget for Mobile
            width: 100.w,
            height: 20.5.h,
            // color: Colors.deepPurple,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                    image: NetworkImage(
                        "https://res.cloudinary.com/abdulsattar/image/upload/v1646147084/MHM/images/Madarsa-hasnain-Moavia-logo_yuiauq.webp")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => HomeScreen()));
                        },
                        child: Text(
                          "Home",
                          style: kMenu,
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        "About",
                        style: kMenu,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PrayerTimeScreen()));
                        },
                        child: Text(
                          "Prayer Time",
                          style: kMenu,
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        : Container(
            // Widget for Tablet
            width: 100.w,
            height: 12.5.h,
            color: Colors.deepPurple,
            child: Center(
              child: Image(
                  image: NetworkImage(
                      "https://res.cloudinary.com/abdulsattar/image/upload/v1646147084/MHM/images/Madarsa-hasnain-Moavia-logo_yuiauq.webp")),
            ),
          );
  }
}
