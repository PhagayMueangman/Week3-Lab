import 'package:flutter/material.dart';

void main() {
  runApp(Answer1());
}

class Answer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid Layout'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 249, 157, 20),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context); // กลับไปหน้าก่อนหน้า
            },
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: List.generate(6, (index) {
                List<Color> customColors = [
                  Colors.red,
                  Colors.green,
                  Colors.blue,
                  Colors.orange,
                  Colors.purple,
                  Colors.yellow,
                ];
                return Container(
                  width: 100,
                  height: 100,
                  color: customColors[index],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
