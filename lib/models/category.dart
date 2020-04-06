import 'package:flutter/material.dart';

enum Category {
  cours,
  tv,
  musique,
  sport,
  cinema,
  art,
  jeux,
  lecture,
  // famille,
  enfants,
  outils
}

Map<Category, dynamic> appCategories = {
  Category.cours: {
    'name': 'Apprendre',
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
  Category.jeux: {
    'name': 'Jeux',
    'color': Color(0xffA569BD),
  },
  Category.lecture: {
    'name': 'Lecture',
    'color': Color(0xff7D6608),
  },
  Category.enfants: {
    'name': 'Enfants',
    'color': Color(0xffD35400),
  },
  Category.outils: {
    'name': 'Outils',
    'color': Color(0xff2874A6),
  },
};
