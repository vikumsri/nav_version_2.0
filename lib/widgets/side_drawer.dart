import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(

            title: Text('Settings'),
            onTap: () {
              BlocProvider.of<NavappblocBloc>(context).add(NavigateToSettingsEvent());
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              BlocProvider.of<NavappblocBloc>(context).add(NavigateToContactUsEvent());
            },
          ),
          ListTile(
            title: Text('LogOut'),
            onTap: () {
              BlocProvider.of<NavappblocBloc>(context).add(LogOutEvent());
            },
          ),
        ],
      ),
    );
  }
}