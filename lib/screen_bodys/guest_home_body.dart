import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';
import 'package:flutter_navigator_2/widgets/custom_button.dart';

class GuestHomeBody extends StatefulWidget {
  @override
  _GuestHomeBodyState createState() => _GuestHomeBodyState();
}

class _GuestHomeBodyState extends State<GuestHomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Welcome',
          style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w900
          ),),
        Image.asset(
            'assets/guest.jpg'),
        SizedBox(
          height: 20.0,
        ),
        Button(
          color: Colors.red[400],
          event: GuestNavigateToLoginEvent(),
          buttonText: 'Login',
        ),
        SizedBox(
          height: 10.0,
        ),
        Button(
          color: Colors.black,
          event: GuestNavigateToRegisterEvent(),
          buttonText: 'Register',
        )
      ],
    );
  }
}

