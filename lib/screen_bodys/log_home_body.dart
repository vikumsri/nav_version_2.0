import 'package:flutter/material.dart';

class LoggedInHomeScreenBody extends StatefulWidget {
  @override
  _LoggedInHomeScreenBodyState createState() => _LoggedInHomeScreenBodyState();
}

class _LoggedInHomeScreenBodyState extends State<LoggedInHomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Home', style: TextStyle(
          fontSize: 28.0
        ),),
      ),
    );
  }
}
