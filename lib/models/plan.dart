import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wadoido/models/category.dart';

class Plan {
  Category category;
  String title;
  String link;
  DateTime date;
  DateTime endDate;

  Plan({this.category, this.title, this.link, this.date, this.endDate});

  factory Plan.fromJson(Map<String, dynamic> json) {
    return Plan(
      category: Category.values
          .firstWhere((e) => e.toString() == 'Category.' + json['category']),
      title: json['titre'],
      link: json['link'],
      date: json['date'],
      endDate: DateTime.parse(json['enddate']),
    );
  }
}

Future<String> _loadAPlanAsset() async {
  return await rootBundle.loadString('data.json');
}

Future wait(int seconds) {
  return new Future.delayed(Duration(seconds: seconds), () => {});
}

Future<List<Plan>> loadPlan() async {
  await wait(1);
  List<Plan> list;
  String jsonString = await _loadAPlanAsset();
  final jsonResponse = json.decode(jsonString);
  list = jsonResponse.map<Plan>((json) => Plan.fromJson(json)).toList();
  // if (cat != null) list.retainWhere((element) => element.category == cat);
  return list;
}
