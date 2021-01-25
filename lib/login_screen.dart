import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';
import 'package:flutter_navigator_2/navigator.dart';
import 'package:flutter_navigator_2/password_reset_screen.dart';

import 'injector.dart';
import 'login_screen_body.dart';

class LogingScreen extends StatefulWidget {
  @override
  _LogingScreenState createState() => _LogingScreenState();
}

class _LogingScreenState extends State<LogingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: BlocProvider<NavappblocBloc>(
        create: (_) => sl<NavappblocBloc>(),
        child: BlocBuilder<NavappblocBloc, NavappblocState>(
          builder: (context, state){
            if(state is LoginState){
              // dispatch event to store user data in cache
            } else if (state is ResetPasswordreadyState){
              // Invoke method to navigate to Rest Password screen
              AppNavigator.of(context).push(MaterialPage(child: PassWordResetScreen(), key: ValueKey('/reset_password')));
            }
            return LoginScreenBody();
          },
        ),
      ),
    );
  }
}
