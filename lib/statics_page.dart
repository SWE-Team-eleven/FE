import 'package:flutter/material.dart';

class StaticsScreen extends StatelessWidget {
  const StaticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Statics Page'),
        ),
        body: Container()
    );
  }
}
