import 'package:flutter/material.dart';
import 'package:new_mhm_website/constant.dart';
import 'package:new_mhm_website/screens/homepage/components/custom_header.dart';
import 'package:new_mhm_website/screens/prayerpage/components/salat_widget.dart';

class PrayerTimeScreen extends StatelessWidget {
  PrayerTimeScreen({Key? key}) : super(key: key);

  String dividerImage =
      'https://res.cloudinary.com/abdulsattar/image/upload/v1646766533/MHM/images/divider_a3kikk.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          CustomHeader(),
          Text(
            "Prayer Timings",
            style: kHead2,
          ),
          Image(image: NetworkImage(dividerImage)),
          SalatTime(),
        ],
      ),
    ));
  }
}
