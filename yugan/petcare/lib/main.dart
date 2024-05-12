import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
   UserProfileScreen({Key? key}) : super(key: key);

  // List of district names
  final List<String> districts = [
   'colombo','gampaha','kalutara','kandy','matale','nuwara eliya','galle','matara','hambanthota',
    'jaffna','kilinochchi','mannar','mulathiv','vavniya', 'batticaloa', 'ampara','trincomalee',
    'kurunegala','puttalama','Colombo','anuradapura', 'polonnaruwa','badulla','monaragala',
    'rathnapura', 'kegalle',   
    // Add more district names as needed
  ];
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 29, 57),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        title: const Text(
          "FuRrY_FrienD",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/path_to_your_image.jpg'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "USER PROFILE",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              border: Border.all(width: 6, color: Color.fromARGB(255, 15, 252, 43)),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.grey.withOpacity(0.5),
                                )
                              ],
                              shape: BoxShape.circle,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 4, color: Colors.white),
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Name",
                  prefixIcon: Icon(Icons.man_3),
                ),
              ),
              SizedBox(height: 10),
              // Dropdown button for selecting district
              
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'District',
                  prefixIcon: Icon(Icons.location_on),
                ),
                value: null, // Initially no value is selected
                onChanged: (newValue) {
                  // Handle dropdown value change if needed
                },
                items: districts.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Pet Type",
                  prefixIcon: Icon(Icons.pets),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Contact Number",
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Address",
                  prefixIcon: Icon(Icons.location_on),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "E-mail",
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
