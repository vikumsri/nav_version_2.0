import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_navigator_2/bloc/bloc.dart';
import 'package:meta/meta.dart';

class NavappblocBloc extends Bloc<NavappblocEvent, NavappblocState> {
  @override
  Stream<NavappblocState> mapEventToState(
    NavappblocEvent event,
  ) async* {
    if (event is CheckUserEvent) {
      //yield GuestUserState();
  if(event.value == 1){
    yield LoggedUserState();
  } else if (event.value == 2){
    yield GuestUserState();
  }



    } else if (event is SetInitState ){
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
    }

  }

  @override
  NavappblocState get initialState => NavAppEmptyState();
}
