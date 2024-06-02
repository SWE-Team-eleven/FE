import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  CreateScreen({super.key});

  final List<String> items = ["Blocker","Critical","Major","Minor","Trivial" ];
  final List<String> items2 = ["UIComponent","DataAccessComponent","SecurityComponent"];


  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _title = TextEditingController();
    final TextEditingController _comment = TextEditingController();
    String major = 'Major';
    String component = 'UIComponent';
    //final TextEditingController _title = TextEditingController();

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
              TextField(
                controller: _title,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter id',
                ),
              ),
              Text(
                "Reporter",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(width: 20), // 간격을 늘려보세요
              Container(
                  child: Text("둘리 둘리",style: TextStyle(fontSize: 20),)),
              Text(
                "Comments",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(width: 20), // 간격을 늘려보세요
              TextField(
                controller: _comment,
                maxLines: 10, // 여기서 3은 입력할 수 있는 최대 행 수를 나타냅니다.
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter id',
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton<String>(
                    value: major,
                    onChanged: (String? value) {
                      setState(() {
                        major = value!;
                      });
                    },
                    items: widget.items.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  DropdownButton<String>(
                    value: component,
                    onChanged: (String? value) {
                      setState(() {
                        component = value!;
                      });
                    },
                    items: widget.items2.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/main_page/user_page',
                      );
                    },
                    child: const Text('Create'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
