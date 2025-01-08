import 'package:flutter/material.dart';

void main() {
  runApp(Answer2());
}

class Answer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Social Media Post'),
          centerTitle: true, // เพิ่มค่าดังนี้เพื่อให้หัวเรื่องตรงกลาง
          backgroundColor: const Color.fromARGB(255, 249, 157, 20),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context); // กลับไปหน้าหลัก
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // แถวแรก: รูปโปรไฟล์, ชื่อผู้ใช้, เวลาโพสต์
              Row(
                children: [
                  // วางรูปโปรไฟล์
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25), // วงกลม
                      image: DecorationImage(
                        image: NetworkImage('https://cdn.fs.teachablecdn.com/Js2HhrLpSyuVRjeIMjPB'), // รูปโปรไฟล์
                        fit: BoxFit.cover, // ครอบภาพให้พอดีกับขนาดวงกลม
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Phaguy Mueangman', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('24 ธ.ค. 2022', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20), // ระยะห่างระหว่างแต่ละแถว

              // แถวที่สอง: ข้อความก่อนรูปภาพ
              Text(
                'คืนนี้ ตี 2 อย่าลืมดู ‘ฝนดาวตก’ แรกของปี 68 ทั่วประเทศ | The Bangkok Insight | LINE TODAY',
                style: TextStyle(
                  color: Colors.black, // สีข้อความ
                  fontWeight: FontWeight.bold, // ตัวหนา
                  fontSize: 18, // ขนาดข้อความ
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20), // ระยะห่างระหว่างแต่ละแถว

              // แถวที่สาม: รูปภาพโพสต์ พร้อมข้อความ
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://today-obs.line-scdn.net/0hGnTWrcj6GEFpLglRux5nFlF4FDBaSAJIS0pTIkgpQ3JDAloQXR1LIhkmQ20UF1lFSU9Rd0krFXgQH14TVA/w644'), // ใส่ URL รูปภาพที่คุณต้องการ
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10), // เพิ่มขอบมนให้ดูเรียบร้อย
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // Shadow ข้างล่าง
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // ระยะห่างระหว่างแต่ละแถว

              // แถวที่สี่: ปุ่ม Like, Comment, Share พร้อมข้อความข้างๆ
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.thumb_up),
                            onPressed: () {}, // ฟังก์ชั่นที่ต้องการ
                          ),
                          SizedBox(width: 5),
                          Text('123 ถูกใจ'), // จำนวนถูกใจพร้อมข้อความ
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.comment),
                            onPressed: () {}, // ฟังก์ชั่นที่ต้องการ
                          ),
                          SizedBox(width: 5),
                          Text('45 ความคิดเห็น'), // จำนวนความคิดเห็นพร้อมข้อความ
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {}, // ฟังก์ชั่นที่ต้องการ
                          ),
                          SizedBox(width: 5),
                          Text('67 แชร์'), // จำนวนแชร์พร้อมข้อความ
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
