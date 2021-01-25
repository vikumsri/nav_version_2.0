import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc.dart';
import 'bloc/navappbloc_bloc.dart';
import 'injector.dart';
import 'navigator.dart';

class LoggedInHomeScreen extends StatefulWidget {
  @override
  _LoggedInHomeScreenState createState() => _LoggedInHomeScreenState();
}

class _LoggedInHomeScreenState extends State<LoggedInHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
                // Update the state of the app.

              },
            ),
            ListTile(
              title: Text('Contact Us'),
              onTap: () {
                // Update the state of the app.

              },
            ),
            ListTile(
              title: Text('LogOut'),
              onTap: () {
                // Update the state of the app.

              },
            ),
          ],
        ),
      ),
        appBar: AppBar(
          title: Text('Guest Home'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          ],
          onTap: (index)=>(index){
            print(index);
            if(index == 1){
              BlocProvider.of<NavappblocBloc>(context).add(HomeNavigateEvent());
            } else if(index == 2){
              //call search event
              BlocProvider.of<NavappblocBloc>(context).add(SearchNavigateEvent());
            } else if(index == 3){
              //call search event
              BlocProvider.of<NavappblocBloc>(context).add(ProfileNavigateEvent());
            }
          },
        ),
        backgroundColor: Colors.white,
        body: BlocProvider<NavappblocBloc>(
          create: (_) => sl<NavappblocBloc>(),
          child: BlocBuilder<NavappblocBloc, NavappblocState>(
            builder: (context, state) {
              if(state is HomeScreenLoadedState){
                return Container(
                  child: Center(
                    child: Text('Home Screen'),
                  ),
                );
              } else if(state is SearchScreenLoadedState){
                return Container(
                  child: Center(
                    child: Text('Search Screen'),
                  ),
                );
              } else if(state is ProfileScreenLoadedState){
                return Container(
                  child: Center(
                    child: Text('Profile Screen'),
                  ),
                );
              }
              return Container();
            },

          ),
        ));
  }
}
