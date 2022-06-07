import 'package:flutter/material.dart';
import 'package:nested_auto_route/main.dart';
import 'package:nested_auto_route/routing/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomeScreen")),
      body: Center(
          child: GestureDetector(
              onTap: () => appRouter.push(const NestedHomeRoute()),
              child: const Text("HomeScreen"))),
    );
  }
}
