import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constant.dart';
import '../models/student_count_model.dart';

Future<StudentCountModel> getStudentCount() async {
  try {
    var response = await http.get(Uri.parse(std_api));
    var decodeData = await json.decode(response.body.toString());
    print(decodeData);
    StudentCountModel studentCountModel =
        StudentCountModel.fromJson(decodeData);
    print("Qaida ${studentCountModel.qaidaCount}");
    print(studentCountModel.nazraCount);
    print(studentCountModel.hifzCount);
    return studentCountModel;
  } catch (e) {
    throw Exception(e);
  }
}
