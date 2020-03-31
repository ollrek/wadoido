import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wadoido/models/category.dart';
import 'package:wadoido/models/plan.dart';
import 'package:intl/intl.dart';

Widget planView(Plan plan, int index) {
  return Stack(children: <Widget>[
    Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: appCategories[plan.category]['color'],
            width: 3,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: Center(
            child: Column(
          children: <Widget>[
            Text(
              plan.title,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            (plan.link != '')
                ? GestureDetector(
                    child: Center(
                      child: Text(
                        'Lien',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                    onTap: () {
                      launch(plan.link);
                    })
                : Container(),
            SizedBox(
              height: 8,
            ),
            Text(
              (plan.date != null
                      ? 'le ' + DateFormat('dd/MM').format(plan.date) + ' '
                      : '') +
                  (plan.endDate != null
                      ? 'jusqu\'au ' + DateFormat('dd/MM').format(plan.endDate)
                      : ''),
              style: TextStyle(fontStyle: FontStyle.italic),
            )
          ],
        ))),
    plan.info != null
        ? Positioned(
            top: 5,
            left: 5,
            child: Tooltip(
              child: Icon(
                Icons.info,
                color: appCategories[plan.category]['color'],
              ),
              message: plan.info,
            ))
        : Container(),
    Positioned(
        top: 0,
        right: 0,
        child: Container(
          height: 20,
          width: 20,
          decoration:
              BoxDecoration(color: appCategories[plan.category]['color']),
        ))
  ]);
}
