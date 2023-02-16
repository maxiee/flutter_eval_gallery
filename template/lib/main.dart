import 'package:flutter/widgets.dart';

Widget main() {
  return const CoolWidget();
}

class CoolWidget extends StatelessWidget {
  const CoolWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("cool");
  }
}
