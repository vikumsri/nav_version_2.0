import 'package:flutter_navigator_2/bloc/bloc.dart';
import 'package:get_it/get_it.dart';

import 'function_holder.dart';

final sl = GetIt.instance;

Future<void> init() {
  //! Features - Keep up

  //bloc
  sl.registerFactory(() => NavappblocBloc(holder: sl()));

  sl.registerLazySingleton(() => FunctionHolder());



}
