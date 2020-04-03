import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            (plan.link != '')
                ? GestureDetector(
                    child: Center(
                      child: Text('Lien',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.grey)),
                    ),
                    onTap: () {
                      launch(plan.link);
                    })
                : Container(),
            SizedBox(
              height: 8,
            ),
            (plan.date != null
                ? Text(
                    'le ' + DateFormat('dd/MM').format(plan.date) + ' ',
                    style: GoogleFonts.lato(fontStyle: FontStyle.italic),
                  )
                : Container()),
            (plan.endDate != null
                ? Text(
                    'jusqu\'au ' + DateFormat('dd/MM').format(plan.endDate),
                    style: GoogleFonts.lato(fontStyle: FontStyle.italic),
                  )
                : Container()),
          ],
        ))),
    plan.info != null
        ? Positioned(
            bottom: 5,
            right: 5,
            child: Tooltip(
              key: Key(index.toString() + 'tooltip'),
              child: Icon(
                Icons.info,
                color: appCategories[plan.category]['color'],
              ),
              message: plan.info,
            ),
          )
        : Container(),
    Positioned(
        bottom: 0,
        left: 0,
        child: Container(
          height: 20,
          width: 20,
          decoration:
              BoxDecoration(color: appCategories[plan.category]['color']),
        ))
  ]);
}
