class PrayerTimeModel {
  NamazTime namazTime;
  HijriDate hijriDate;

  PrayerTimeModel({required this.namazTime, required this.hijriDate});

  factory PrayerTimeModel.fromJson(Map<String, dynamic> parsedJson) {
    return PrayerTimeModel(
        namazTime: NamazTime.fromJson(parsedJson['NamazTime']),
        hijriDate: HijriDate.fromJson(parsedJson['HijriDate']));
  }
}

class NamazTime {
  late String Fajr;
  late String Sunrise;
  late String Zuhr;
  late String Asr;
  late String Maghrib;
  late String Isha;
  late String CurrentTime;

  NamazTime(
      {required this.Fajr,
      required this.Sunrise,
      required this.Zuhr,
      required this.Asr,
      required this.Maghrib,
      required this.Isha,
      required this.CurrentTime});

  factory NamazTime.fromJson(Map<String, dynamic> namazJson) {
    return NamazTime(
        Fajr: namazJson['Fajr'],
        Sunrise: namazJson['Sunrise'],
        Zuhr: namazJson['Zuhr'],
        Asr: namazJson['Asr'],
        Maghrib: namazJson['Maghrib'],
        Isha: namazJson['Isha'],
        CurrentTime: namazJson['CurrentTime']);
  }
}

class HijriDate {
  late String day;
  late String monthNo;
  late String month;
  late String year;

  HijriDate(
      {required this.day,
      required this.monthNo,
      required this.month,
      required this.year});

  factory HijriDate.fromJson(Map<String, dynamic> hijriDateJson) {
    return HijriDate(
        day: hijriDateJson['day'],
        monthNo: hijriDateJson['monthNo'],
        month: hijriDateJson['month'],
        year: hijriDateJson['year']);
  }
}
