import 'package:flutter_navigator_2/bloc/bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() {
  //! Features - Keep up

  //bloc
  sl.registerFactory(() => NavappblocBloc());



}
