// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    RootRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RootScreen());
    },
    HomeRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterScreen());
    },
    CatalogRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CatalogScreen());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeScreen());
    },
    NestedHomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NestedHomeScreen());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(RootRoute.name, path: '/', children: [
          RouteConfig(HomeRouter.name,
              path: 'empty-router-screen',
              parent: RootRoute.name,
              children: [
                RouteConfig(HomeRoute.name, path: '', parent: HomeRouter.name),
                RouteConfig(NestedHomeRoute.name,
                    path: 'nested-home-screen', parent: HomeRouter.name)
              ]),
          RouteConfig(CatalogRoute.name,
              path: 'catalog-screen', parent: RootRoute.name)
        ])
      ];
}

/// generated route for
/// [RootScreen]
class RootRoute extends PageRouteInfo<void> {
  const RootRoute({List<PageRouteInfo>? children})
      : super(RootRoute.name, path: '/', initialChildren: children);

  static const String name = 'RootRoute';
}

/// generated route for
/// [EmptyRouterScreen]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(HomeRouter.name,
            path: 'empty-router-screen', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [CatalogScreen]
class CatalogRoute extends PageRouteInfo<void> {
  const CatalogRoute() : super(CatalogRoute.name, path: 'catalog-screen');

  static const String name = 'CatalogRoute';
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [NestedHomeScreen]
class NestedHomeRoute extends PageRouteInfo<void> {
  const NestedHomeRoute()
      : super(NestedHomeRoute.name, path: 'nested-home-screen');

  static const String name = 'NestedHomeRoute';
}
