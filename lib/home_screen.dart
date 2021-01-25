import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/guest_home_screen.dart';
import 'package:flutter_navigator_2/home_screen_body.dart';
import 'package:flutter_navigator_2/logged_in_Home_body.dart';
import 'package:flutter_navigator_2/navigator.dart';

import 'bloc/bloc.dart';
import 'injector.dart';

class HomeScreen extends StatelessWidget {

  final page = MaterialPage(
      child: GuestHomeScreen(), key: ValueKey('/guestHome'));
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Home'),
        ),
        body: BlocProvider<NavappblocBloc>(
          create: (_) => sl<NavappblocBloc>(),
          child: BlocBuilder<NavappblocBloc, NavappblocState>(
            builder: (context, state) {
              if (state is GuestUserState) {
                AppNavigator.of(context).push(page);
              } else if (state is LoggedUserState) {
                AppNavigator.of(context).push(MaterialPage(
                    child: LoggedInHomeScreen(),
                    key: ValueKey('/loggedInHome')));
              }
              return HomeScreenBody();
            },

          ),
        ));
  }
}
