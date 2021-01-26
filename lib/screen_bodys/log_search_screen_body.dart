import 'package:flutter/material.dart';

class LoggedInSearchScreenBody extends StatefulWidget {
  @override
  _LoggedInSearchScreenBodyState createState() => _LoggedInSearchScreenBodyState();
}

class _LoggedInSearchScreenBodyState extends State<LoggedInSearchScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Search',style: TextStyle(
            fontSize: 28.0
        ),),
      ),
    );
  }
}
