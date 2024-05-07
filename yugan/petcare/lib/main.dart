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
     // title: "PetCare App",
      home: const UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], 
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 29, 57), 
    
        leading: IconButton(
          onPressed: () {
            // Handle back button pressed
          },
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
            onPressed: () {
              // Handle avatar tapped
            },
            icon: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://example.com/path_to_your_image.jpg'),
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
                              border: Border.all(
                                  width: 6,
                                  color: Color.fromARGB(255, 15, 252, 43)),
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
                                  border: Border.all(
                                      width: 4, color: Colors.white),
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
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "User Name",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "E-mail",
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Contact Number",
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Address",
                  prefixIcon: Icon(Icons.location_on),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Confirm E-mail", 
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(
                height: 30,
                width: 200,
              ),
              ElevatedButton(
                onPressed: () {
                 
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
