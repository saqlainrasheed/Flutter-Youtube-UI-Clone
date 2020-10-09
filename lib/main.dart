import 'package:flutter/material.dart';
import './tabs.dart';

void main() => runApp(Youtube());

class Youtube extends StatefulWidget {
  Youtube({Key key}) : super(key: key);
  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube_clone',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      home: Tabs(),
    );
  }
}
