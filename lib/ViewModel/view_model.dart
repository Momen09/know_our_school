//TODO: add your view model class here

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:know_our_school/Model/model.dart';

class SchoolViewModel extends ChangeNotifier{
  List<School> _school = [];
  List<School> get school => _school;

  Future<void> fetchSchool() async {
    try {
      final response = await rootBundle.loadString('assets/JSONdata/SchoolData.json');
      print('JSON Response: $response');
      final jsonData = json.decode(response) as List<dynamic>;
      _school = jsonData.map((data) => School.fromJson(data)).toList();
      notifyListeners();
    } catch (e) {
      print('Error loading school data: $e');
    }
  }
}
