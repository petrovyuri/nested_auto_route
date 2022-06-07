import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_auto_route/tab_screens/nested_home_screen.dart';
import 'package:nested_auto_route/routing/root_screen.dart';

import '../tab_screens/catalog.dart';
import '../tab_screens/home.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(path: "/", page: RootScreen, children: [
      AutoRoute(page: EmptyRouterScreen, name: "HomeRouter", children: [
        AutoRoute(initial: true, page: HomeScreen),
        AutoRoute(page: NestedHomeScreen),
      ]),
      AutoRoute(page: CatalogScreen),
    ]),
  ],
)
class AppRouter extends _$AppRouter {}
