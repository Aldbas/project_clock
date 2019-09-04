import 'package:flutter/material.dart';

import 'package:flutter_reorderable_list/flutter_reorderable_list.dart';
import 'package:project_clock/createAlarm.dart';

//TODO: find out how to send
//TODO: allow to create alarms

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  Map<String, bool> values = {
    'lights': false,
    'test': false,
    'BLAH': true,
    '3:00 PM': true
  };
  bool lights = false;
  // bool _giveVerse = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateAlarm())),
            child: Icon(Icons.add_alarm)),
        backgroundColor: Colors.white,
        body: ListView(
            children: values.keys.map((String key) {
          return LabeledSwitch(
            padding: EdgeInsets.all(20.0),
            label: key,
            value: values[key],
            onChanged: (bool value) {
              setState(() {
                values[key] = value;
              });
            },
          );
        }).toList()));
  }
}

class LabeledSwitch extends StatelessWidget {
  const LabeledSwitch({
    this.label,
    this.padding,
    this.groupValue,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Switch(
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}
