import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  final TextEditingController _projectNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _userEmailController = TextEditingController();
  String _projectname="Hello, World";
  String _description="C++ 1.1";
  List<String> _members = [];

  void _addProjectName() {
    setState(() {
      String name = _projectNameController.text;
      _projectname = name;
    });
  }


  void _addDescription() {
    setState(() {
      String name = _descriptionController.text;
      _description = name;
    });
  }

  void _addUser() {
    setState(() {
      String user = _userEmailController.text;
      _members.add(user);
      _userEmailController.clear();
    });
  }

  @override
  void dispose() {
    _projectNameController.dispose();
    _descriptionController.dispose();
    _userEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Page'),
      ),
      body: Center(
        child: Container(
          width: 800,
          height: 700,
          color: Colors.grey[300],
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Generate new project",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _projectNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter project name',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addProjectName,
                child: Text("Add"),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter description',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addDescription,
                child: Text("Add"),
              ),
              SizedBox(height: 20),
              Text(
                "Manage user account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _userEmailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your email',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addUser,
                child: Text("Add"),
              ),
              SizedBox(height: 20),
              Text(
                "Accept project",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text("Project Name: ${_projectname}"),
              SizedBox(height: 20),
              Text("Description: ${_description}"),
              SizedBox(height: 5),
              Expanded(
                child: ListView.builder(
                  itemCount: _members.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.5),
                      child: ListTile(
                        title: Text(_members[index]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}