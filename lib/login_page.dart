import 'package:flutter/material.dart';
import 'main_page.dart';
import 'admin_page.dart';
import 'user_page.dart';
import 'ticket_info_page.dart';
import 'statics_page.dart';
import 'create_page.dart';
import 'ticket_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/main_page': (context) => MainScreen(),
        '/main_page/admin_page':(context) => AdminScreen(),
        '/main_page/user_page':(context) => UserScreen(),
        '/main_page/user_page/ticket_info_page':(context) => TicketInfoScreen(),
        '/main_page/user_page/create_page':(context) => CreateScreen(),
        '/main_page/user_page/statics_page':(context) => StaticsScreen(),
        '/main_page/user_page/ticket_page':(context) => TicketScreen(),

      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _id = TextEditingController();
    final TextEditingController _pw = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _id,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter id',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _pw,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter pw',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/main_page',
                  );
                },
                child: const Text('Go to Second Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
