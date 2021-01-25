import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';

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

class Button extends StatelessWidget {
  final Color color;
  final NavappblocEvent event;
  final buttonText;

  const Button({
    Key key, @required this.color, @required this.event, @required this.buttonText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 60.0,
      child: RaisedButton(
        onPressed: ()
        {
          NavappblocState state = BlocProvider.of<NavappblocBloc>(context).state;
          if( state!= NavAppEmptyState()) {
            BlocProvider.of<NavappblocBloc>(context).add(SetInitState());
            BlocProvider.of<NavappblocBloc>(context).add(event);
          } else{
            BlocProvider.of<NavappblocBloc>(context).add(event);
          }
        },
        color: color,
        padding: EdgeInsets.all(5.0),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,),
        ),
      ),
    );
  }
}
