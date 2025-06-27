 import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ImageList = <String> [
      'assets/images/Human.jpg',
      'assets/images/27.jpg',
      'assets/images/16.jpg',
      'assets/images/14.jpg',
      'assets/images/15.jpg',
      'assets/images/13.jpg',
      'assets/images/11.jpg',
      'assets/images/12.jpg',
      'assets/images/22.jpg',
      'assets/images/21.jpg',
      'assets/images/24.jpg',
      'assets/images/25.jpg',
      'assets/images/26.jpg',
      'assets/images/14.jpg',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gallery App"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 179, 59, 125),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemCount: ImageList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.amber,
              child: Image.asset(ImageList[index], fit: BoxFit.cover,),
            );
          },
          
        ),
      ),
    );
  }
}
