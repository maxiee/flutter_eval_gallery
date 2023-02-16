import 'dart:async';

import 'package:flutter/material.dart';

class ViewModel extends ChangeNotifier {
  ViewModel() {
    // timer not working now.
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      print('Timer tick!');
      count++;
      notifyListeners();
    });
  }

  late Timer timer;
  int count = 0;

  @override
  void dispose() {
    // super.dispose();
    // timer.cancel();
  }
}

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({super.key});

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  late ViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = ViewModel();
    viewModel.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ChangeNotifier Demo")),
      body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        const Text('A counter driven by Timer and ChangeNotifier'),
        Text('${viewModel.count}')
      ])),
    );
  }
}
