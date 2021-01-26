import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';
import '../bloc/navappbloc_bloc.dart';
import '../bloc/navappbloc_bloc.dart';

class SplashScreenBody extends StatefulWidget {
  SplashScreenBody({Key key}) : super(key: key);

  @override
  _SplashScreenBodyState createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {

  callUserClass(){
    BlocProvider.of<NavappblocBloc>(context).add(CheckUserEvent());

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/nav.png'),
          Text('Navigator 2.0'),
          TextButton(
            child: Text('Press here to start navigating....'),
            onPressed: callUserClass,
          )

        ],
      ),
    );
  }
}
