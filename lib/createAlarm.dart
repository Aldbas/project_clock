import 'package:flutter/material.dart';

class CreateAlarm extends StatefulWidget {
  @override
  _CreateAlarmState createState() => _CreateAlarmState();
}

class _CreateAlarmState extends State<CreateAlarm> {
  bool pressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('AM'),
                  onPressed: () {
                    setState(() {
                      pressed = !pressed;
                    });
                  },
                ),
                RaisedButton(
                  child: Text('PM'),
                  onPressed: () {
                    setState(() {
                      pressed = !pressed;
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
