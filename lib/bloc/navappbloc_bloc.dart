import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';
import 'package:flutter_navigator_2/function_holder.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavappblocBloc extends Bloc<NavappblocEvent, NavappblocState> {

  final FunctionHolder holder;
  NavappblocBloc({
    @required this.holder,
  });


  @override
  Stream<NavappblocState> mapEventToState(
    NavappblocEvent event,
  ) async* {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (event is CheckUserEvent) {
      //yield GuestUserState();
      yield Loading();
      final value = await holder.checkLoggedinStatus(prefs);
      if(value){
        yield LoggedUserState();
      } else {
        yield GuestUserState();
      }

    } else if (event is LogIn ){
      yield Logging();
      await holder.loginUser(prefs);
      yield LoggedUserState();
    }else if (event is SetInitState ){
      yield NavAppEmptyState();
    } else if (event is GuestNavigateToLoginEvent){
      yield LoginReadyState();
    } else if (event is GuestNavigateToRegisterEvent){
      yield RegisterReadyState();
    } else if (event is CompleteResetPassWordEvent){
      yield NavAppEmptyState();
    } else if (event is NavigateToResetPasswordEvent){
      yield ResetPasswordreadyState();
    } else if (event is ResetPassWordEvent){
      yield PasswordResettingState();
    } else if (event is HomeNavigateEvent){
      yield HomeScreenLoadedState();
    } else if (event is SearchNavigateEvent){
      yield SearchScreenLoadedState();
    } else if (event is ProfileNavigateEvent){
      yield ProfileScreenLoadedState();
    } else if (event is NavigateToContactUsEvent){
      yield ReadySettings();
    } else if (event is NavigateToSettingsEvent){
      yield ReadyContactUs();
    }else if (event is LogOutEvent){
      yield LoggingOut();
      await holder.logoutUser(prefs);
      yield LoggedOut();
    }

  }

  @override
  NavappblocState get initialState => NavAppEmptyState();
}
