import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constant.dart';
import '../models/prayer_time_model.dart';

Future<PrayerTimeModel> getNamazTimeData() async {
  try {
    final response = await http.get(Uri.parse(namaz_time_api));
    var decodedData = await jsonDecode(response.body.toString());
    print(decodedData);

    PrayerTimeModel prayerTimeModel = PrayerTimeModel.fromJson(decodedData);
    print(prayerTimeModel.namazTime.Isha);
    print(prayerTimeModel.hijriDate.day);
    return prayerTimeModel;
  } catch (e) {
    throw Exception(e);
  }
}
