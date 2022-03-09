class StudentCountModel {
  late int qaidaCount;
  late int nazraCount;
  late int hifzCount;

  StudentCountModel(
      {required this.qaidaCount,
      required this.nazraCount,
      required this.hifzCount});

  factory StudentCountModel.fromJson(Map<String, dynamic> parsedJson) {
    return StudentCountModel(
        qaidaCount: parsedJson['qaidaCount'],
        nazraCount: parsedJson['nazraCount'],
        hifzCount: parsedJson['hifzCount']);
  }
}
