import 'package:flutter/material.dart';
import 'file:///D:/Zone24x7/nzv/nav_version_2.0/lib/widgets/side_drawer.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}
