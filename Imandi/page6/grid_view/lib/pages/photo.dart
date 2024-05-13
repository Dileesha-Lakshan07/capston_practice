import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class photo extends StatelessWidget {
  photo({Key? key}) : super(key: key);

  // List of image paths
  List<String> imageList = [
    "assets/image01.jpg",
    "assets/image02.jpg",
    "assets/image03.jpg",
    "assets/image04.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //App Bar
        title: Text(
          "Home Page",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          //Leading Icon
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 32,
            color: Colors.white,
          ),
        ),
        actions: [
          //Action Icon
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle,
              size: 36,
              color: Colors.white,
            ),
          ), // <-- Closing parenthesis was missing here
        ],
        backgroundColor: Color.fromARGB(255, 31, 172, 156),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: GridView.builder(
          itemCount:
              imageList.length, // Use imageList.length instead of hardcoding 4
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 40,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 31, 172, 156),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imageList[index]),
                  fit: BoxFit.cover, // Use imageList[index]
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Color.fromARGB(255, 31, 172, 156),
        color: Color.fromARGB(255, 31, 172, 156),
        animationDuration: const Duration(milliseconds: 420),
        items: [
          Icon(
            Icons.home_outlined,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart_checkout,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.group_add_rounded,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.account_circle_rounded,
            size: 35,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
