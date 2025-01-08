import 'package:flutter/material.dart';

void main() {
  runApp(Answer1());
}

class Answer1 extends StatefulWidget {
  @override
  _Answer1State createState() => _Answer1State();
}

class _Answer1State extends State<Answer1> {
  String _selectedColorName = ''; // ชื่อสีที่ถูกเลือก
  Color _selectedColor = Colors.transparent; // สีที่ถูกเลือก

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
            child: Column(
              children: [
                // GridView สำหรับแสดงสี
                Expanded(
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
                      List<String> colorNames = [
                        'Red',
                        'Green',
                        'Blue',
                        'Orange',
                        'Purple',
                        'Yellow',
                      ];

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            // อัปเดตสถานะเมื่อคลิกที่สี
                            _selectedColorName = colorNames[index];
                            _selectedColor = customColors[index];
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          color: customColors[index],
                          child: _selectedColor == customColors[index]
                              ? Center(
                                  child: Text(
                                    colorNames[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              : null,
                        ),
                      );
                    }),
                  ),
                ),
                // ข้อความรายละเอียดของสีที่ถูกเลือก
                if (_selectedColorName.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Selected Color: $_selectedColorName',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
