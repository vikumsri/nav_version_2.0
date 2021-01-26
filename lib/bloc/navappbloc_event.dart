import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class NavappblocEvent extends Equatable {
  NavappblocEvent([List props = const <dynamic>[]]) : super(props);
}

class CheckUserEvent extends NavappblocEvent {}

class SetInitState extends NavappblocEvent {}

class GuestNavigateToRegisterEvent extends NavappblocEvent {}

class GuestNavigateToLoginEvent extends NavappblocEvent {}

class ResetPassWordEvent extends NavappblocEvent {}

class NavigateToResetPasswordEvent extends NavappblocEvent {}

class CompleteResetPassWordEvent extends NavappblocEvent {}

class HomeNavigateEvent extends NavappblocEvent {}

class SearchNavigateEvent extends NavappblocEvent {}

class ProfileNavigateEvent extends NavappblocEvent {}

class NavigateToContactUsEvent extends NavappblocEvent {}

class NavigateToSettingsEvent extends NavappblocEvent {}

class LogOutEvent extends NavappblocEvent {}

class LogIn extends NavappblocEvent {}
