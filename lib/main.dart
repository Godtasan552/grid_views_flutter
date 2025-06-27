 import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ImageList = <String> [
      'assets/images/01.jpg',
      'assets/images/02.png',
      'assets/images/03.jpg',
      'assets/images/04.jpg',
      'assets/images/05.jpg',
      'assets/images/06.jpg',
      'assets/images/07.png',
      'assets/images/08.jpg',
      'assets/images/09.jpg',
      'assets/images/10.jpg',
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
