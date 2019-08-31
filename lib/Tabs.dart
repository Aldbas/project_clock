import 'package:flutter/material.dart';

import 'AlarmPage.dart';
import 'StopwatchPage.dart';
import 'TimerPage.dart';
import 'WorldClockPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Clock'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: 'Alarm', icon: Icon(Icons.alarm)),
                Tab(text: 'World Clock', icon: Icon(Icons.access_time)),
                Tab(text: 'Timer', icon: Icon(Icons.access_alarm)),
                Tab(text: 'Stopwatch', icon: Icon(Icons.access_alarm)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              AlarmPage(),
              WorldClockPage(),
              TimerPage(),
              StopwatchPage(),
            ],
          )),
    );
  }
}
