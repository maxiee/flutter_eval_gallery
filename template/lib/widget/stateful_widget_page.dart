import 'package:flutter/material.dart';

class StatefulWidgetPage extends StatefulWidget {
  const StatefulWidgetPage({super.key});

  @override
  State<StatefulWidgetPage> createState() => _StatefulWidgetPageState();
}

class _StatefulWidgetPageState extends State<StatefulWidgetPage> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    // super.dispose(); // this cause compiler error, why?
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("StatefulWidget Demo")),
      // body: Column(children: logs.map((e) => Text(e)).toList()),
      body: const Center(
          child:
              Text("I'm stateful widget.\nSee console logs for lifecycles.")),
    );
  }
}
