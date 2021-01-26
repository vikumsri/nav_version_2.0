import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';
import '../injector.dart';
import 'file:///D:/Zone24x7/nzv/nav_version_2.0/lib/screens/login_screen.dart';
import 'package:flutter_navigator_2/navigator.dart';
import 'file:///D:/Zone24x7/nzv/nav_version_2.0/lib/screen_bodys/password_reset_Body.dart';

import 'guest_home_screen.dart';


class PassWordResetScreen extends StatefulWidget {
  @override
  _PassWordResetScreenState createState() => _PassWordResetScreenState();
}

class _PassWordResetScreenState extends State<PassWordResetScreen> {
  @override
  Widget build(BuildContext context) {
    var _stack = <Page>[];
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset password'),

      ),
      body: BlocProvider<NavappblocBloc>(
        create: (_) => sl<NavappblocBloc>(),
        child: BlocBuilder<NavappblocBloc, NavappblocState>(
          builder:(context, state){
            if(state is PasswordResettingState){
              _stack.add(MaterialPage(child: GuestHomeScreen(), key: ValueKey('GuestHome')));
              AppNavigator.of(context).setStack(_stack, CompleteResetPassWordEvent());
            }
            return ResetPasswordBody();
          },
        )
      ),
    );
  }
}
