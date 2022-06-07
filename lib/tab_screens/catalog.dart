import 'package:flutter/material.dart';
import 'package:nested_auto_route/main.dart';
import 'package:nested_auto_route/tab_screens/nested_home_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CatalogScreen")),
      body: Center(
          child: GestureDetector(
              onTap: () => appRouter.pushWidget(const NestedHomeScreen()),
              child: const Text("CatalogScreen"))),
    );
  }
}
