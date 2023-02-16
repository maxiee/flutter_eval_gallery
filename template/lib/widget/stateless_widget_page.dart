import 'package:flutter/material.dart';

class StatelessWidgetPage extends StatelessWidget {
  const StatelessWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("StatelessWidget Demo")),
      // body: Column(children: logs.map((e) => Text(e)).toList()),
      body: const Center(child: Text("I'm stateless widget.")),
    );
  }
}
