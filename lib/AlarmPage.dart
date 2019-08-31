import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  bool _lights = false;
  bool _giveVerse = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add_alarm)),
      backgroundColor: Colors.orange,
      body: Column(
        children: <Widget>[
          ListTile(
              trailing: Switch(
                value: _giveVerse,
                onChanged: (bool value) {
                  setState(() {
                    _giveVerse = value;
                  });
                },
              ),
              title: Text(
                'LLD',
              )),
          SwitchListTile(
            title: Text('LLD'),
            value: _lights,
            onChanged: (bool value) {
              setState(() {
                {
                  _lights = value;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
