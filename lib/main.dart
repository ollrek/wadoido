import 'package:flutter/material.dart';
import 'package:wadoido/widgets/main_content.dart';
import 'package:wadoido/widgets/app_bar.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '#Noidea', home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MainContent(),
      appBar: appBar(),
    );
  }
}
