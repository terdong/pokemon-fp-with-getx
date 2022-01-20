import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:gcl_for_flutter/gcl.dart';

class SimpleBlocObserver extends BlocObserver with LoggerProvider {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) logd('$error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (kDebugMode) logd('$transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    if (kDebugMode) logd('$change');
    super.onChange(bloc, change);
  }
}
