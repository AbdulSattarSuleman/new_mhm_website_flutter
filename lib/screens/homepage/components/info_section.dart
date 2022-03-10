import 'package:flutter/material.dart';
import 'package:new_mhm_website/constant.dart';
import 'package:sizer/sizer.dart';

class InfoText extends StatefulWidget {
  const InfoText({Key? key}) : super(key: key);

  @override
  _InfoTextState createState() => _InfoTextState();
}

class _InfoTextState extends State<InfoText> {
  // VideoPlayerController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _controller = VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
    //   ..initialize().then((value) {
    //     setState(() {
    //       _controller!.play();
    //     });
    //   });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;
    return isDesktop(context)
        ? Container(
            color: color1,
            width: 100.w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 40, 40, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Madrasah Hasnain Moavia',
                          style: kHead1,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Wrap(children: [
                          Text(
                            text1,
                            style: ktext1,
                            textWidthBasis: TextWidthBasis.longestLine,
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Container(
            color: color1,
            width: 100.w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
              child: Column(
                children: [
                  Text(
                    'Madrasah Hasnain Moavia',
                    style: kMobileHead1,
                    textAlign: TextAlign.center,
                  ),
                  Divider(),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    mobileText1,
                    style: kMobiletext1,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          );
  }
}
