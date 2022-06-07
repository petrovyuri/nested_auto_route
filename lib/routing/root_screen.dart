import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const _RootView();
  }
}

class _RootView extends StatelessWidget {
  const _RootView({
    Key? key,
  }) : super(key: key);

  get _buildBottomNavBarItems => [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.category_sharp),
          label: "Catalog",
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouter(), // Main
        CatalogRoute(), // Catalog
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: _buildBottomNavBarItems);
      },
    );
  }
}
