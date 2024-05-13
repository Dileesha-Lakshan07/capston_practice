import 'package:flutter/material.dart';


void main(){
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Myapp",
      home:list(),
    );
  }
}

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
          title: Text("List",style: TextStyle(fontWeight: FontWeight.w800),),
        leading: IconButton(
          icon: Icon(Icons.lock),
          onPressed: (){},
        ),
        flexibleSpace: Image.asset("assets/photo.jpg",fit: BoxFit.cover,),
      ),
      body: Container(
        width: 300,
        // height: 410,
        child: ListView(
          scrollDirection: Axis.vertical,
           children: [
             Container(
               padding: EdgeInsets.all(30),
               height: 300,
               color: Colors.orange,
               child: Image.asset("assets/nature.jpg",fit: BoxFit.fill,),
             ),
             Divider(),
             Container(
               padding: EdgeInsets.all(30),
               height: 300,
               color: Colors.blue,
               child: Image.asset("assets/a1.jpg",fit: BoxFit.fill,),
             ),
             Divider(),
             Container(
               padding: EdgeInsets.all(30),
               height: 300,
               color: Colors.cyanAccent,
               child: Image.asset("assets/a2.jpg",fit: BoxFit.fill,),
             ),
             Divider(),
             Container(
               padding: EdgeInsets.all(30),
               height: 300,
               color: Colors.deepPurpleAccent,
               child: Image.asset("assets/a3.jpg",fit: BoxFit.fill,),
             ),
        
        
           ],
        ),
      )
    ));
  }
}
