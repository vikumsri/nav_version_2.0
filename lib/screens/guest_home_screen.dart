import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';
import 'package:flutter_navigator_2/bloc/navappbloc_bloc.dart';
import 'package:flutter_navigator_2/bloc/navappbloc_bloc.dart';
import 'package:flutter_navigator_2/screens/register_screen.dart';
import '../injector.dart';
import '../navigator.dart';
import 'file:///D:/Zone24x7/nzv/nav_version_2.0/lib/screen_bodys/guest_home_body.dart';
import 'package:flutter_navigator_2/bloc/navappbloc_bloc.dart';

import 'login_screen.dart';


class GuestHomeScreen extends StatefulWidget {
  @override
  _GuestHomeScreenState createState() => _GuestHomeScreenState();
}

class _GuestHomeScreenState extends State<GuestHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guest Home'),
      ),
      backgroundColor: Colors.white,
      body: BlocProvider<NavappblocBloc>(
        create: (_) => sl<NavappblocBloc>(),
        child: BlocBuilder<NavappblocBloc, NavappblocState>(
          builder: (context, state) {
            if (state is LoginReadyState) {
              AppNavigator.of(context).push(MaterialPage(
                  child: LogingScreen(),
                  key: ValueKey('/loggedInHome')));
            } else if (state is RegisterReadyState) {
              AppNavigator.of(context).push(MaterialPage(
                  child: RegisterScreen(),
                  key: ValueKey('/RegisterInHome')));
            }
            return GuestHomeBody();
          },

        ),
      ));
  }
}
