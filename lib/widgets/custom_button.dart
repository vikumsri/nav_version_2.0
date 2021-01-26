import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';

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
