import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/home.dart';
import 'package:youtube_clone/inbox.dart';
import 'package:youtube_clone/library.dart';
import 'package:youtube_clone/subscriptions.dart';
import 'package:youtube_clone/trending.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  static final homePageKey = GlobalKey<_TabsState>();
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: homePageKey,
        appBar: new AppBar(
          title: Image(
            image: AssetImage('images/logo.jpg'),
            width: 120,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.videocam),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
          ],
        ),
        bottomNavigationBar: new Material(
          child: new TabBar(
              controller: tabController,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.transparent,
              labelColor: Colors.redAccent[700],
              labelStyle: TextStyle(fontSize: 11.0),
              tabs: <Tab>[
                new Tab(
                  icon: new Icon(Icons.home),
                  text: "Home",
                ),
                new Tab(
                  icon: new Icon(Icons.whatshot),
                  text: "Trending",
                ),
                new Tab(
                  icon: new Icon(Icons.subscriptions),
                  text: "Subscriptions",
                ),
                new Tab(
                  icon: new Icon(Icons.inbox),
                  text: "Inbox",
                ),
                new Tab(
                  icon: new Icon(Icons.folder),
                  text: "Library",
                ),
              ]),
        ),
        body: new TabBarView(controller: tabController, children: <Widget>[
          // All the Class goes here
          Home(),
          Trending(),
          Subscriptions(),
          Inbox(),
          Library(),
        ]));
  }
}
