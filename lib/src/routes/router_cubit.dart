import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'router_state.dart';
part 'router_cubit.freezed.dart';

class RouterCubit extends Cubit<RouterState> {
  RouterCubit() : super(const RouterState.page1());

  Future<void> goToPage1([String? text]) async =>
      emit(RouterState.page1(extraPageContent: text));

  Future<void> goToPage2([String? text]) async =>
      emit(RouterState.page2(extraPageContent: text));

  Future<void> goToPage3([String? text]) async =>
      emit(RouterState.page3(extraPageContent: text));

  Future<void> goToPage4([String? text]) async =>
      emit(RouterState.page4(extraPageContent: text));

  Future<void> popExtra() async {
    state.maybeWhen(
      orElse: () => goToPage1(),
      page2: (_) => goToPage2(),
      page3: (_) => goToPage3(),
      page4: (_) => goToPage4(),
    );
  }

  void setNewRoutePath(RouterState state) {
    state.when(
      page1: (text) => goToPage1(text),
      page2: (text) => goToPage2(text),
      page3: (text) => goToPage3(text),
      page4: (text) => goToPage4(text),
    );
  }
}
