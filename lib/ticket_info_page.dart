import 'package:flutter/material.dart';

class TicketInfoScreen extends StatefulWidget {
  const TicketInfoScreen({Key? key}) : super(key: key);

  @override
  State<TicketInfoScreen> createState() => _ProjetScreenState();
}

class _ProjetScreenState extends State<TicketInfoScreen> {

  final TextEditingController _commentController = TextEditingController();
  String _comment ="comment를 입력하세요";

  void _addComment() {
    setState(() {
      String name = _commentController.text;
      _comment = name;
    });
  }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "제목",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(width: 20), // 간격을 늘려보세요
              Text(
                "에러났어요",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "Reporter",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(width: 20), // 간격을 늘려보세요
              Container(
                child: Text("둘리 둘리", style: TextStyle(fontSize: 20)),
              ),
              Text(
                "Comments",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(width: 20), // 간격을 늘려보세요
              Text(
                "야생의 오소리",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              Text(
                "Enter comment",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _commentController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter project name',
                ),
              ),
              SizedBox(height: 20),
              Text("${_comment}"),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed:_addComment,
                child: const Text('enter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
