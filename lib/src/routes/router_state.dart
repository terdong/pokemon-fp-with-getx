part of 'router_cubit.dart';

@freezed
class RouterState with _$RouterState {
  const RouterState._();

  bool get isRootPage =>
      maybeWhen(orElse: () => false, page1: (text) => (text == null));

  String get stateUrl => maybeWhen(
        page1: (text) => (text?.isEmpty ?? true)
            ? "/page1"
            : "/page1/${text!.replaceAll(" ", "-")}",
        page2: (text) => (text?.isEmpty ?? true)
            ? "/page2"
            : "/page2/${text!.replaceAll(" ", "-")}",
        page3: (text) => (text?.isEmpty ?? true)
            ? "/page3"
            : "/page3/${text!.replaceAll(" ", "-")}",
        page4: (text) => (text?.isEmpty ?? true)
            ? "/page4"
            : "/page4/${text!.replaceAll(" ", "-")}",
        orElse: () => "/page1",
      );

  const factory RouterState.page1({String? extraPageContent}) = _page1;
  const factory RouterState.page2({String? extraPageContent}) = _page2;
  const factory RouterState.page3({String? extraPageContent}) = _page3;
  const factory RouterState.page4({String? extraPageContent}) = _page4;
}
