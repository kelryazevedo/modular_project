import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () => Modular.to.pushNamed(
              '/home/',
              arguments: 'arguments sent from Data',
            ),
            child: Text('Data'),
          ),
          ElevatedButton(
            onPressed: () => Modular.to.pushNamed('/home/?query=Test&order=id'),
            child: Text('Query String or queryParams'),
          ),
          ElevatedButton(
            onPressed: () => Modular.to.pushNamed('/home/123'),
            child: Text('Path Parameters'),
          ),
        ],
      ),
    );
  }
}
