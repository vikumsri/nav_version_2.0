import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc.dart';
import 'bloc/navappbloc_bloc.dart';
import 'bloc/navappbloc_bloc.dart';

class HomeScreenBody extends StatefulWidget {
  HomeScreenBody({Key key}) : super(key: key);

  @override
  _HomeScreenBodyState createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {

  callUserClass(int index){
    if(BlocProvider.of<NavappblocBloc>(context).state != NavAppEmptyState()){
      BlocProvider.of<NavappblocBloc>(context).add(SetInitState());
      BlocProvider.of<NavappblocBloc>(context).add(CheckUserEvent(value: index));
    }else{
      BlocProvider.of<NavappblocBloc>(context).add(CheckUserEvent(value: index));
    }

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 40.0,right: 40.0),

          child: RaisedButton(onPressed: () => callUserClass(2),
            color: Colors.grey[700],
          child: Text('Guest User', style: TextStyle(color: Colors.white),),),
        ),
        SizedBox(height: 20.0,),
    Container(
    padding: EdgeInsets.only(left: 40.0,right: 40.0),
      child: RaisedButton(onPressed: () => callUserClass(1),
      color: Colors.red[400],
      child: Text('Logged In User'),),
    )
      ],
    );
  }
}
