import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wadoido/models/plan.dart';
import 'package:intl/intl.dart';

Widget planView(Plan plan, int index) {
  return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: new Column(children: <Widget>[
        Text(
          plan.title,
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: (plan.link != '')
                ? GestureDetector(
                    child: Center(
                      child: new RaisedButton(
                        onPressed: () => {_launchURL()},
                        child: new Text('Show Flutter homepage'),
                      ),
                    ),
                    onTap: () {
                      launch(plan.link);
                    })
                : Container()),
        Text(DateFormat('yyyy-MM-dd – kk:mm').format(plan.endDate))
      ]));
}

_launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
