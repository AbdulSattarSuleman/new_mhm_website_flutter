import 'package:flutter/material.dart';
import 'package:new_mhm_website/constant.dart';
import 'package:new_mhm_website/models/prayer_time_model.dart';
import 'package:new_mhm_website/services/prayer_time_service.dart';
import 'package:sizer/sizer.dart';

class SalatTime extends StatelessWidget {
  SalatTime({Key? key}) : super(key: key);

  String dividerImage =
      'https://res.cloudinary.com/abdulsattar/image/upload/v1646766533/MHM/images/divider_a3kikk.png';

  String prayerImage =
      'https://res.cloudinary.com/abdulsattar/image/upload/v1646329848/MHM/images/intro_xjhpbn.jpg';

  String namazTitle = "Name of Salat";
  String prayerTime = "Prayer Time";
  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;
    return isDesktop(context)
        ? Scaffold(
            body: Center(
              child: Container(
                margin: EdgeInsets.only(left: 40),
                width: 80.w,
                height: 500,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30.w,
                      height: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                prayerImage,
                              ))),
                    ),
                    FutureBuilder(
                        future: getNamazTimeData(),
                        builder:
                            (context, AsyncSnapshot<PrayerTimeModel> snapshot) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(50, 40, 40, 50),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        namazTitle,
                                        style: kPrayer,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        prayerTime,
                                        style: kPrayer,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: NetworkImage(dividerImage)),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Image(
                                            image: NetworkImage(dividerImage)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Fajar",
                                          style: kPrayer,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          snapshot.data!.namazTime.Fajr,
                                          style: kPrayer,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Sunrise",
                                          style: kPrayer,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          snapshot.data!.namazTime.Sunrise,
                                          style: kPrayer,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Zohar",
                                          style: kPrayer,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          snapshot.data!.namazTime.Zuhr,
                                          style: kPrayer,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Asar",
                                          style: kPrayer,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          snapshot.data!.namazTime.Asr,
                                          style: kPrayer,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Magrib",
                                          style: kPrayer,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          snapshot.data!.namazTime.Maghrib,
                                          style: kPrayer,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Isha",
                                          style: kPrayer,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          snapshot.data!.namazTime.Isha,
                                          style: kPrayer,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
          )
        // Mobile View
        : Scaffold(
            body: FutureBuilder(
                future: getNamazTimeData(),
                builder: (context, AsyncSnapshot<PrayerTimeModel> snapshot) {
                  return Column(
                    children: [
                      Container(
                        width: 100.w,
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  prayerImage,
                                ))),
                      ),
                      Center(
                        child: Text(
                          "Prayer Timings",
                          style: kHead1,
                        ),
                      ),
                      Image(image: NetworkImage(dividerImage)),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // First Column
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Name of Salat',
                                style: kPrayer,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Fajar',
                                style: kSalat,
                              ),
                              Text(
                                'Zohar',
                                style: kSalat,
                              ),
                              Text(
                                'Asar',
                                style: kSalat,
                              ),
                              Text(
                                'Mahgrib',
                                style: kSalat,
                              ),
                              Text(
                                'Isha',
                                style: kSalat,
                              ),
                            ],
                          ),

                          SizedBox(
                            width: 29,
                          ),
                          // Second COlumn

                          Column(
                            children: [
                              Text(
                                'Prayer Time',
                                style: kPrayer,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                snapshot.data!.namazTime.Fajr,
                                style: kSalat,
                              ),
                              Text(
                                snapshot.data!.namazTime.Zuhr,
                                style: kSalat,
                              ),
                              Text(
                                snapshot.data!.namazTime.Asr,
                                style: kSalat,
                              ),
                              Text(
                                snapshot.data!.namazTime.Maghrib,
                                style: kSalat,
                              ),
                              Text(
                                snapshot.data!.namazTime.Isha,
                                style: kSalat,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  );
                }),
          );
  }
}
