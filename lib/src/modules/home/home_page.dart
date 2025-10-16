import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          spacing: 20,
          children: [
            Text(Modular.args.data ?? 'No data'),
            Text(Modular.args.queryParams.toString()),
            Text(Modular.args.params.toString()),
          ],
        ),
      ),
    );
  }
}
