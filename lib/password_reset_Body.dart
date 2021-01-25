import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';

class ResetPasswordBody extends StatefulWidget {
  @override
  _ResetPasswordBodyState createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<ResetPasswordBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  icon: Icon(Icons.email)
                ),
              ),
              SizedBox(height:20.0),
              SizedBox(
                width: 400.0,
                child: RaisedButton(onPressed: () => BlocProvider.of<NavappblocBloc>(context).add(ResetPassWordEvent()),
                  color: Colors.blue,

                child: Text('Rest'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
