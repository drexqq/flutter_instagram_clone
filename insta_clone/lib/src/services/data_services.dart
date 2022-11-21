import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class DataService extends ChangeNotifier {
  final List<String> _urlList = [
    "https://codingapple1.github.io/app/data.json",
    "https://codingapple1.github.io/app/more1.json",
    "https://codingapple1.github.io/app/more2.json"
  ];
  List<Map<dynamic, dynamic>> datas = [];
  int index = 0;

  Future<List<dynamic>?> getData() async {
    try {
      var res = await http.get(Uri.parse(_urlList[0]));
      if (json.decode(res.body) is List) {
        datas = [...datas, ...json.decode(res.body)];
      } else {
        datas.add(json.decode(res.body));
      }
      index++;
      notifyListeners();
      return datas;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  void updateData(Map<dynamic, dynamic> data) {
    print("Test");
    datas.add(data);
    notifyListeners();
  }
}

final dataServiceProvider =
    ChangeNotifierProvider.autoDispose((ref) => DataService());
