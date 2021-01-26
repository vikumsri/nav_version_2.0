import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';
import 'package:flutter_navigator_2/screen_bodys/register_screen_body.dart';
import 'package:flutter_navigator_2/screens/password_reset_screen.dart';

import '../injector.dart';
import '../navigator.dart';



class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
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
            return RegisterScreenBody();
          },
        ),
      ),
    );
  }
}
