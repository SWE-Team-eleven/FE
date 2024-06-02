import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create Ticket Page'),
        ),
        body: Center(
          child: Container(
            width: 1000,
            height: 800,
            color: Colors.red,
          ),
        )
    );
  }
}
