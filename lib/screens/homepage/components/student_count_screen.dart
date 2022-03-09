import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constant.dart';
import '../../../models/student_count_model.dart';
import '../../../services/student_count_api.dart';

class StudentCountScreen extends StatelessWidget {
  const StudentCountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;
    return FutureBuilder(
        future: getStudentCount(),
        builder: (context, AsyncSnapshot<StudentCountModel> snapshot) {
          if (snapshot.hasData) {
            if (isDesktop(context)) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
                child: Column(
                  // shrinkWrap: true,
                  children: [
                    Text(
                      "Student Count ",
                      style: kHead2,
                    ),
                    SizedBox(height: 3.h),
                    Divider(),
                    SizedBox(height: 3.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DesktopStudentCard(snapshot, snapshot.data!.qaidaCount,
                            "Qaida Student", qaidaImageUrl),
                        DesktopStudentCard(snapshot, snapshot.data!.nazraCount,
                            "Nazra Student", nazraImageUrl),
                        DesktopStudentCard(snapshot, snapshot.data!.hifzCount,
                            "Hifz Student", hifzImageUrl),
                      ],
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
                child: Column(
                  // shrinkWrap: true,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Student Count ",
                      style: kHead2,
                    ),
                    SizedBox(height: 3.h),
                    Divider(),
                    SizedBox(height: 3.h),
                    MobileStudentCard(snapshot, snapshot.data!.qaidaCount,
                        "Qaida Student", qaidaImageUrl),
                    MobileStudentCard(snapshot, snapshot.data!.nazraCount,
                        "Nazra Student", nazraImageUrl),
                    MobileStudentCard(snapshot, snapshot.data!.hifzCount,
                        "Hifz Student", hifzImageUrl),
                  ],
                ),
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Column DesktopStudentCard(AsyncSnapshot<StudentCountModel> snapshot,
      int count, String categoryTitle, String imageUrl) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
            height: 40.h,
            width: 25.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                    image: NetworkImage(imageUrl)))),
        FractionalTranslation(
          translation: Offset(0, -0.5),
          child: Container(
            width: 280,
            height: 70,
            child: Center(
                child: Text(
              '$categoryTitle ${count}',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 5, color: Colors.white)),
          ),
        ),
      ],
    );
  }

  Column MobileStudentCard(AsyncSnapshot<StudentCountModel> snapshot, int count,
      String categoryTitle, String imageUrl) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
            height: 40.h,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                    image: NetworkImage(imageUrl)))),
        FractionalTranslation(
          translation: Offset(0, -0.5),
          child: Container(
            width: 280,
            height: 70,
            child: Center(
                child: Text(
              '$categoryTitle ${count}',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 5, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
