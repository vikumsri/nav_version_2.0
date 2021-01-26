import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';
import 'file:///D:/Zone24x7/nzv/nav_version_2.0/lib/screens/splash_screen.dart';
import 'package:flutter_navigator_2/navigator.dart';
import 'injector.dart' as di;


void main() async {
  await di.init();
  runApp(NavMain());
}

class NavMain extends StatefulWidget {
  @override
  _NavMainState createState() => _NavMainState();
}

class _NavMainState extends State<NavMain> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavappblocBloc>(
      create: (_) => di.sl<NavappblocBloc>(),
      child: MaterialApp(
        theme: ThemeData.light(),
        navigatorKey: _navigatorKey,
        onGenerateRoute: (_) => null,
        builder: (BuildContext context, _ /*Widget child*/) {
          return AppNavigator(
            navigatorKey: _navigatorKey,
            initialPages: [
              MaterialPage(
                name: '/',
                child: BlocProvider<NavappblocBloc>(
                  create: (_) => di.sl<NavappblocBloc>(),
                  child: SplashScreen(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
