import 'package:flutter/material.dart';

enum Category { work, tv, musique }

Map<Category, dynamic> appCategories = {
  Category.work: {
    'name': 'Work',
    'color': Color(0xffb8be78),
  },
  Category.tv: {
    'name': 'TV',
    'color': Color(0xff2f4858),
  },
  Category.musique: {
    'name': 'Musique',
    'color': Color(0xffceb2ed),
  },
};
