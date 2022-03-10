import 'package:flutter/material.dart';
import 'package:new_mhm_website/screens/homepage/components/custom_header.dart';
import 'package:new_mhm_website/screens/prayerpage/prayer_time_screen.dart';

import 'components/first_section.dart';
import 'components/second_section.dart';
import 'components/student_count_screen.dart';
import 'components/info_section.dart';
import 'components/youtube_video.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: isMobile(context)
          ? AppBar()
          : PreferredSize(
              preferredSize: Size(0.0, 0.0),
              child: Container(),
            ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            isDesktop(context) ? CustomHeader() : SizedBox(),

            // First Section
            FirstSection(),
            //Second Section
            SecondSection(),
            // Video Section
            InfoText(),
            //Youtube Video
            YoutubeVideo(),

            //API Data
            StudentCountScreen(),
          ],
        ),
      )),
      drawer: isMobile(context)
          ? Drawer(
              child: ListView(
                children: [
                  ListTile(
                    title: Text("Home"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomeScreen()));
                    },
                  ),
                  ListTile(
                    title: Text("Prayer Time"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => PrayerTimeScreen()));
                    },
                  ),
                ],
              ),
            )
          : Container(),
    );
  }
}
