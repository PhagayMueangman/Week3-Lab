import 'package:flutter/material.dart';
import 'Answer1.dart';
import 'Answer2.dart';
import 'Answer3.dart';
import 'Answer4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Basic',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen : Answer 5'),
      ),
      body: Column(
        children: [
          // Header Container
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://static.wixstatic.com/media/f2abb2_1c53d048d81c484f9d306924d51f6011~mv2.png/v1/crop/x_0,y_0,w_1071,h_460/fill/w_698,h_300,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/TBATE_Novel_Banner.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNxjW5-ybPShq0Do6PMUmPSbFfrBlJOJcmi6xxcPfevChIRmoLktWsDHOdbCtVHHZY0cs&usqp=CAU',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'ผกาย เมืองแมน'
                  '640710542',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                // ปุ่ม 1
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Answer1()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    ),
                    child: Text('Go to Answer 1'),
                  ),
                ),
                SizedBox(height: 16.0),

                // ปุ่ม 2
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Answer2()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    ),
                    child: Text('Go to Answer 2'),
                  ),
                ),
                SizedBox(height: 16.0),

                // ปุ่ม 3
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Answer3()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    ),
                    child: Text('Go to Answer 3'),
                  ),
                ),
                SizedBox(height: 16.0),

                // ปุ่ม 4
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Answer4()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    ),
                    child: Text('Go to Answer 4'),
                  ),
                ),
                SizedBox(height: 8.0), // เพิ่มช่องว่างก่อนข้อความ

                // ข้อความใต้ปุ่ม 4
                Center(
                  child: Text(
                    'ทุกๆหน้าสามารถกดเล่นได้ทุกปุ่ม',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

