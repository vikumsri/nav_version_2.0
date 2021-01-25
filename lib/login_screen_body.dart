import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';

class LoginScreenBody extends StatefulWidget {
  @override
  _LoginScreenBodyState createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {

  navigateToResetPassWord(){
    BlocProvider.of<NavappblocBloc>(context).add(NavigateToResetPasswordEvent());
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              icon: Icon(Icons.email),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              icon: Icon(Icons.lock),
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        RaisedButton(onPressed: (){}, child: Text('Login'),),
        SizedBox(height: 20.0,),
        FlatButton(
            onPressed: navigateToResetPassWord,
            child: Text('Forgot password'))
      ],
    );
  }
}
