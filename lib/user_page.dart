import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Container(
                width: 200,
                height: 60,
                child: Text("Go Create Ticket",style: TextStyle(fontSize: 25),),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/main_page/user_page/create_page',
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Container(
                      width: 1000,
                      height: 600,
                      color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Project List",
                                style: TextStyle(fontSize: 30),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 30,
                                width: 800,
                                color: Colors.cyan,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Issue Tracking2"),
                                    SizedBox(
                                      width: 300,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 30,
                                    ),
                                    ElevatedButton(
                                      child: Container(),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/main_page/user_page/project_page',
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(width: 150),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      width: 600,
                      height: 300,
                      child: ElevatedButton(
                        child: Text("Go Statics Page",style: TextStyle(fontSize: 50),),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/main_page/user_page/statics_page',
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        width: 600,
                        height: 300,
                        child :ElevatedButton(
                          child: Text("Go Ticket Page",style: TextStyle(fontSize: 50),),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/main_page/user_page/ticket_page',
                            );
                          },
                        ),
                    )
                  ],
                )
              ],
            ),
          ],
        )
    );
  }
}
