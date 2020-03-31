import 'package:flutter/material.dart';
import 'package:wadoido/models/category.dart';

Widget categoryView(Category cat, Category filter) {
   return Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: (filter != null && filter != cat)
          ? Colors.grey
          : appCategories[cat]['color'],
    ),
    child: Padding(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            appCategories[cat]['name'],
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          filter == cat
              ? Icon(
                  Icons.clear,
                  color: Colors.white,
                )
              : Container()
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
    ),
    height: 40.0,
  );
}
