import 'package:flutter/material.dart';

void main() {
  runApp(Answer4());
}

class Answer4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Page'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 243, 177, 33),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context); // ใช้ Navigator.pop() กลับไปหน้าหลัก
            },
          ),
        ),
        body: ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEditing = false;
  final TextEditingController nameController = TextEditingController(text: 'เด็กเบี้ยว 007');
  final TextEditingController emailController = TextEditingController(text: 'mueangman_p@silpakorn.edu');
  final TextEditingController phoneController = TextEditingController(text: '+66 063 602 1079');
  final TextEditingController addressController = TextEditingController(text: '291/113 ถนนรักเรา แขวงข้าเอง เขตรักเธอ กรุงเทพมหานคร 10210');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // ส่วนหัว (Header)
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
              // รูปโปรไฟล์ (วงกลม)
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
                'เด็กเบี้ยว 007',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),

        // ส่วนข้อมูลโปรไฟล์
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              // ข้อมูล 1: อีเมล
              Row(
                children: [
                  Icon(Icons.email, color: Colors.blue),
                  SizedBox(width: 10),
                  isEditing
                      ? Expanded(
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(hintText: 'กรุณากรอกอีเมล'),
                          ),
                        )
                      : Text(emailController.text, style: TextStyle(fontSize: 16)),
                ],
              ),
              Divider(),

              // ข้อมูล 2: เบอร์โทรศัพท์
              Row(
                children: [
                  Icon(Icons.phone, color: Colors.blue),
                  SizedBox(width: 10),
                  isEditing
                      ? Expanded(
                          child: TextField(
                            controller: phoneController,
                            decoration: InputDecoration(hintText: 'กรุณากรอกเบอร์โทรศัพท์'),
                          ),
                        )
                      : Text(phoneController.text, style: TextStyle(fontSize: 16)),
                ],
              ),
              Divider(),

              // ข้อมูล 3: ที่อยู่
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on, color: Colors.blue),
                  SizedBox(width: 10),
                  isEditing
                      ? Expanded(
                          child: TextField(
                            controller: addressController,
                            decoration: InputDecoration(hintText: 'กรุณากรอกที่อยู่'),
                          ),
                        )
                      : Expanded(
                          child: Text(
                            addressController.text,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),

        // ส่วนเมนู (ปุ่มด้านล่างในแถวเดียวกัน)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1, // เพิ่มขนาดให้เหมาะสม
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      isEditing = !isEditing; // สลับโหมดการแก้ไข
                    });
                  },
                  icon: Icon(isEditing ? Icons.save : Icons.edit),
                  label: Text(isEditing ? 'บันทึกโปรไฟล์' : 'แก้ไขโปรไฟล์'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 223, 223, 223),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                flex: 1, // เพิ่มขนาดให้เหมาะสม
                child: ElevatedButton.icon(
                  onPressed: () {
                    // แสดงข้อความเตือนเมื่อกดออกจากระบบ
                    _showLogoutAlert(context);
                  },
                  icon: Icon(Icons.exit_to_app),
                  label: Text('ออกจากระบบ'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 223, 223, 223),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20), // ระยะห่างจากขอบด้านล่าง
      ],
    );
  }

  // ฟังก์ชันที่แสดง AlertDialog
  void _showLogoutAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ไม่สามารถออกจากระบบได้'),
          content: Text('ตอนนี้คุณติดอยู่ใน SAO'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // ปิด dialog
              },
              child: Text('ตกลง'),
            ),
          ],
        );
      },
    );
  }
}
