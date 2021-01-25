import 'package:equatable/equatable.dart';

abstract class NavappblocState extends Equatable {
  NavappblocState([List props = const <dynamic>[]]) : super(props);
}

class NavappblocInitial extends NavappblocState {}

class NavAppEmptyState extends NavappblocState {}

class GuestUserState extends NavappblocState {}

class LoggedUserState extends NavappblocState {}

class LoginReadyState extends NavappblocState {}

class RegisterReadyState extends NavappblocState {}

class ResetPasswordreadyState extends NavappblocState {}

class LoginState extends NavappblocState {}

class PasswordResettingState extends NavappblocState {}

class HomeScreenLoadedState extends NavAppEmptyState {}

class SearchScreenLoadedState extends NavAppEmptyState {}

class ProfileScreenLoadedState extends NavAppEmptyState {}




