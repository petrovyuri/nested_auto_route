import 'package:flutter/material.dart';

class NestedHomeScreen extends StatelessWidget {
  const NestedHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NestedHomeScreen"),
      ),
      body: const Center(child: Text("NestedHomeScreen")),
    );
  }
}
