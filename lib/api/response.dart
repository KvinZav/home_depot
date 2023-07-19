import 'dart:convert';
import 'package:flutter/services.dart';

Future<String> loadJsonData(String location) async {
  return await rootBundle.loadString(location);
}

Future<Map<String, dynamic>> getJSONResponse<T>(String location) async {
  final response = await loadJsonData(location);
  return json.decode(response);
}