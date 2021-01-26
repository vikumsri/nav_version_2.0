import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'file:///D:/Zone24x7/nzv/nav_version_2.0/lib/screens/contact%20us.dart';
import 'package:flutter_navigator_2/navigator.dart';
import 'package:flutter_navigator_2/screen_bodys/log_profile_screen_body.dart';
import 'package:flutter_navigator_2/screens/guest_home_screen.dart';
import 'file:///D:/Zone24x7/nzv/nav_version_2.0/lib/screens/settings_page.dart';
import 'file:///D:/Zone24x7/nzv/nav_version_2.0/lib/widgets/side_drawer.dart';

import '../bloc/bloc.dart';
import '../bloc/navappbloc_bloc.dart';
import '../injector.dart';
import '../screen_bodys/log_home_body.dart';
import '../screen_bodys/log_search_screen_body.dart';

class LoggedInHomeScreen extends StatefulWidget {

  @override
  _LoggedInHomeScreenState createState() => _LoggedInHomeScreenState();
}

class _LoggedInHomeScreenState extends State<LoggedInHomeScreen> {

  int _SelectedIndex = 0;
  var _stack = <Page>[];
  bottomNavigationItemTapped(int value, BuildContext context){

    if(value == 0){
      setState(() {
        _SelectedIndex = 0;
      });
      BlocProvider.of<NavappblocBloc>(context).add(HomeNavigateEvent());
    } else if(value == 1){
      setState(() {
        _SelectedIndex = 1;
      });
      //call search event
      BlocProvider.of<NavappblocBloc>(context).add(SearchNavigateEvent());
    } else if(value == 2){
      setState(() {
        _SelectedIndex = 2;
      });
      //call search event
      BlocProvider.of<NavappblocBloc>(context).add(ProfileNavigateEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    print(_SelectedIndex);
    print(BlocProvider.of<NavappblocBloc>(context).state);
    return BlocProvider<NavappblocBloc>(
      create: (_) => sl<NavappblocBloc>(),
      child: BlocBuilder<NavappblocBloc, NavappblocState>(
        builder: (context, state){
          if(state is ReadyContactUs){
            AppNavigator.of(context).push(MaterialPage(child: Settings(), key: ValueKey('/settings')));
          }else if (state is ReadySettings){
            AppNavigator.of(context).push(MaterialPage(child: ContactUS(), key: ValueKey('/settings')));
          } else if (state is LoggedOut){
            _stack.add(MaterialPage(child: GuestHomeScreen(), key: ValueKey('/GuestHome')));
            AppNavigator.of(context).setStack(_stack, null);
          }
          return Scaffold(
              drawer: SideDrawer(),
              appBar: AppBar(
                title: Text('Guest Home'),
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
                  BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
                ],
                onTap: (value) => bottomNavigationItemTapped(value,context),
              ),
              backgroundColor: Colors.white,
              body: ScaffoldBody(context, state)
          );
        },
      ),
    );
  }

   Widget ScaffoldBody(BuildContext context, state) {
    if(state is HomeScreenLoadedState){
      return LoggedInHomeScreenBody();
    } else if (state is SearchScreenLoadedState){
      return LoggedInSearchScreenBody();
    } else if (state is ProfileScreenLoadedState){
      return LoggedInProfileScreenBody();
    }

    return LoggedInHomeScreenBody();
  }
}


