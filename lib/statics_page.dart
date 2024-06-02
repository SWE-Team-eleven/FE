import 'package:flutter/material.dart';

class StaticsScreen extends StatelessWidget {
  const StaticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Statics Page'),
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("Major statics",
                    style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Blocker: 30",
                    style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Critical: 30",
                    style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Major: 30",
                    style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Minor: 30",
                    style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Trivial: 30",
                    style: TextStyle(fontSize: 30),),
                ],
              ),
              SizedBox(
                width: 200,
              ),
              Column(
                children: [
                  Text("Status statics",
                    style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 50,
                  ),
                  Text("New: 30",
                    style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Assigned: 30",
                    style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Reopened: 30",
                    style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Resolved: 30",
                    style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Closed: 30",
                    style: TextStyle(fontSize: 30),),

                ],
              ),

            ],
          ),
        )
    );
  }
}
