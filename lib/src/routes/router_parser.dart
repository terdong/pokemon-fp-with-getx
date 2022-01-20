import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_fp_with_gext/src/routes/router_cubit.dart';

class RouterParser extends RouteInformationParser<RouterState> {
  const RouterParser();

  @override
  Future<RouterState> parseRouteInformation(RouteInformation routeInformation) {
    final uri = Uri.parse(routeInformation.location ?? "");
    if (uri.pathSegments.isNotEmpty) {
      return SynchronousFuture(_parseStateFromUri(uri));
    } else {
      return SynchronousFuture(const RouterState.page1());
    }
  }

  RouterState _parseStateFromUri(Uri uri) {
    if (uri.pathSegments.contains("page1")) {
      return _parsePage1State(uri);
    } else if (uri.pathSegments.contains("page2")) {
      return _parsePage2State(uri);
    } else if (uri.pathSegments.contains("page3")) {
      return _parsePage3State(uri);
    } else if (uri.pathSegments.contains("page4")) {
      return _parsePage4State(uri);
    } else {
      return const RouterState.page1();
    }
  }

  RouterState _parsePage1State(Uri uri) {
    if (uri.pathSegments.length > 1) {
      return RouterState.page1(
          extraPageContent: uri.pathSegments[1].replaceAll("-", " "));
    } else {
      return const RouterState.page1();
    }
  }

  RouterState _parsePage2State(Uri uri) {
    if (uri.pathSegments.length > 1) {
      return RouterState.page2(
          extraPageContent: uri.pathSegments[1].replaceAll("-", " "));
    } else {
      return const RouterState.page2();
    }
  }

  RouterState _parsePage3State(Uri uri) {
    if (uri.pathSegments.length > 1) {
      return RouterState.page3(
          extraPageContent: uri.pathSegments[1].replaceAll("-", " "));
    } else {
      return const RouterState.page3();
    }
  }

  RouterState _parsePage4State(Uri uri) {
    if (uri.pathSegments.length > 1) {
      return RouterState.page4(
          extraPageContent: uri.pathSegments[1].replaceAll("-", " "));
    } else {
      return const RouterState.page4();
    }
  }

  @override
  RouteInformation? restoreRouteInformation(RouterState configuration) =>
      RouteInformation(location: configuration.stateUrl);
}
