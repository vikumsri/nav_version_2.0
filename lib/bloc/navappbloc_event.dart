import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class NavappblocEvent extends Equatable {
  NavappblocEvent([List props = const <dynamic>[]]) : super(props);
}

class CheckUserEvent extends NavappblocEvent {
  final int value;

  CheckUserEvent({@required this.value}): super();


}


class SetInitState extends NavappblocEvent {}

class GuestNavigateToRegisterEvent extends NavappblocEvent {}

class GuestNavigateToLoginEvent extends NavappblocEvent {}

class ResetPassWordEvent extends NavappblocEvent {}

class NavigateToResetPasswordEvent extends NavappblocEvent {}

class CompleteResetPassWordEvent extends NavappblocEvent {}

class HomeNavigateEvent extends NavappblocEvent{}

class SearchNavigateEvent extends NavappblocEvent{}

class ProfileNavigateEvent extends NavappblocEvent{}
