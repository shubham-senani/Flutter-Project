import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final String title = "Proto-Flutter";
  final int number = 42;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Color.fromARGB(255, 255, 251, 251),
        
        title: Text(title)
        ),
        body: Center(
            child: Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Text("Hello World from Flutter! 🐦 $number"),
    )));
  }
}
