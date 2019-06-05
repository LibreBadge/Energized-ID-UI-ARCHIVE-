import 'dart:convert';

import 'package:energized_id/energized_id.dart';
import 'package:http/http.dart' as http;

class ServerConnector {
  http.Client _client;
  ServerConnector(this._client);

  Future<Student> getStudentById(int id) async {
    return Student.fromJson(jsonDecode((await _client.get("/students/$id")).body));
  }

  Future<Student> postStudentById(int id, Student student) async {
    return Student.fromJson(jsonDecode((await _client.post("/students/$id", body: jsonEncode(student.toJson()))).body));
  }

  Future<List<int>> getStudentImageById(int id) async {

  }

  Future<List<int>> postStudentImageById(int id, List<int> imageData) async {

  }
}