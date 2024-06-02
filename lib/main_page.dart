import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            ElevatedButton(
              child: Text('Go Admin Page'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/main_page/admin_page',
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: Text('Go User Page'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/main_page/user_page',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
