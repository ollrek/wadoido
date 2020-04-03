import 'package:flutter/material.dart';

enum Category { 
  // work, 
  // tv, 
  musique, sport, cinema, art, gaming, lecture }

Map<Category, dynamic> appCategories = {
  // Category.work: {
  //   'name': 'Work',
  //   'color': Color(0xffb8be78),
  // },
  // Category.tv: {
  //   'name': 'TV',
  //   'color': Color(0xff2f4858),
  // },
  Category.musique: {
    'name': 'Musique',
    'color': Color(0xffceb2ed),
  },
  Category.sport: {
    'name': 'Sport',
    'color': Color(0xffE74C3C),
  },
  Category.cinema: {
    'name': 'Cinema',
    'color': Color(0xffF8C471),
  },
  Category.art: {
    'name': 'Art',
    'color': Color(0xff6E2C00),
  },
  Category.gaming: {
    'name': 'Gaming',
    'color': Color(0xffA569BD),
  },
  Category.lecture: {
    'name': 'Lecture',
    'color': Color(0xff7D6608),
  },
};
