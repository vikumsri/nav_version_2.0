import 'package:flutter/material.dart';

class LoggedInProfileScreenBody extends StatefulWidget {
  @override
  _LoggedInProfileScreenBodyState createState() => _LoggedInProfileScreenBodyState();
}

class _LoggedInProfileScreenBodyState extends State<LoggedInProfileScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Profile',style: TextStyle(
            fontSize: 28.0
        ),),
      ),
    );
  }
}
