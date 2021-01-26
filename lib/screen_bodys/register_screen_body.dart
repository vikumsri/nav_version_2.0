import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';
import '../bloc/navappbloc_bloc.dart';
import '../bloc/navappbloc_bloc.dart';

class RegisterScreenBody extends StatefulWidget {
  @override
  _RegisterScreenBodyState createState() => _RegisterScreenBodyState();
}

class _RegisterScreenBodyState extends State<RegisterScreenBody> {

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
              hintText: 'Full Name',
              icon: Icon(Icons.person),
            ),
          ),
        ),
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
        RaisedButton(onPressed: (){}, child: Text('Register'),),
        SizedBox(height: 20.0,),
        TextButton(onPressed: navigateToResetPassWord, child: Text('Forgot password'))
      ],
    );
  }
}
