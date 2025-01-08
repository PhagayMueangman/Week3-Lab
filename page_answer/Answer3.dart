import 'package:flutter/material.dart';

void main() {
  runApp(Answer3());
}

class Answer3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SHARK SPEED'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 249, 157, 20),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context); // กลับไปหน้าหลัก
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // ระยะขอบรอบเนื้อหา
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ส่วนหัว (Header) หมวดสินค้า
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    'หมวดหมู่ : New R15/MT15 ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 20), // ระยะห่างระหว่างส่วนหัวกับสินค้า

              // ส่วนรายการสินค้า
              Expanded(
                child: ListView(
                  children: [
                    _buildProductRow(
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/d6612742b28bbfad3da6ca53763986cc@resize_w450_nl.webp',
                        'GOLD SUPER CNC บังสเตอร หน้า M SLAZ / R15 เก่า / MT15/ NEW R 15 สีทอง สวยเเละ ถูกที่สุด',
                        '฿254',
                      ),
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/0fe1b0f0c6631fb2d7d0b32a0e26a32f@resize_w450_nl.webp',
                        'กันดีด SHARK POWER สำหรับ MT15/MSLAZ/ R15 /NEWR15',
                        '฿250',
                      ),
                    ),
                    SizedBox(height: 16), // ระยะห่างระหว่างบล็อค

                    _buildProductRow(
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/2f3118a643d07342346078819abbb97f@resize_w450_nl.webp',
                        'ท้ายสั้น พับได้ MT15/ XSR 155 ทรง V2',
                        '฿399',
                      ),
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/ab1c13f73edbb31be1814c326d8dd2d0@resize_w450_nl.webp',
                        'ลด สุโค่ย *** กันดีด mslaz R15 mt15 new R15 shark power',
                        '฿275',
                      ),
                    ),
                    SizedBox(height: 16),

                    // เพิ่มสินค้า 10 ชิ้น
                    _buildProductRow(
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/a2e8254d32a62639b8c13691f246bc87@resize_w450_nl.webp',
                        'ไฟท้าย Mslaz (เเปลงใส่ MT15 ได้ ) มีไฟเลี้ยว ในตัวเเถมรีเลย์ปรับระดับฟรี',
                        '฿749',
                      ),
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/d583e98e01059fd1911d2e3dcfc04a70@resize_w450_nl.webp',
                        'กันรอยถัง+ฝาถัง +ข้างถัง สำหรับ MT15 งานเรซิ่น อย่างดี',
                        '฿247',
                      ),
                    ),
                    SizedBox(height: 16),
                    _buildProductRow(
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/23357e5e09a110d961252af12f7c3c98@resize_w450_nl.webp',
                        'ชิวแต่ง MT15 + น็อตสี / อุปกรแต่งรถจักรยานยนต์',
                        '฿410',
                      ),
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/b6b8f898dcf3b37f384d2d56e250f2ee@resize_w450_nl.webp',
                        'King กันรอยถัง ฝาถัง MT15 อุปกรณ์แต่งมอเตอร์ไซด์',
                        '฿266',
                      ),
                    ),
                    SizedBox(height: 16),
                    _buildProductRow(
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/df53375eab2114024a95ce7dda3fc44d@resize_w450_nl.webp',
                        'งานมีเนียม การ์ดหม้อน้ำ MT15 เเดง',
                        '฿162',
                      ),
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/5c591a12b874338fa2f0080bb28685f4@resize_w450_nl.webp',
                        'ชิวหน้ารถมอเตอร์ไซค์ สีโม้ค ชิวหน้ารถมอเตอร์ไซค์ MT15 ทรง WOLF เเถม น๊อตสี',
                        '฿404',
                      ),
                    ),
                    SizedBox(height: 16),
                    _buildProductRow(
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/f8500e5b5a4d48c00d286822adc82a33@resize_w450_nl.webp',
                        'Set 2 อย่าง Mslaz/MT15/NewR15 กระจกปลายแฮนด์ + มือเบรค',
                        '฿506',
                      ),
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/8f099de79a74c46e83289a8905765ab7@resize_w450_nl.webp',
                        'เกียโยง new R15/ MT15 สีทอง',
                        '฿1,299',
                      ),
                    ),
                    SizedBox(height: 16),
                    _buildProductRow(
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/992fd6650a8369859123854e6b79c2ae@resize_w450_nl.webp',
                        'การ์ด เลส เเท้ MT15 งาน Lycan ตรงรุ่น คุณภาพสูง',
                        '฿228',
                      ),
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/be7f66dbab07be5b37b9a470c01ecb79@resize_w450_nl.webp',
                        'บังสเตอร์ Mslaz / MT15/ new R15 ลดพิเศษ ราคาสุดปัง',
                        '฿330',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductRow(Widget card1, Widget card2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [card1, card2],
    );
  }

  Widget _buildProductCard(String imageUrl, String productName, String price) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // ปรับให้พื้นหลังบล็อคเป็นสีขาว
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5.0,
              spreadRadius: 2.0,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // จัดข้อความชิดซ้าย
          children: [
            Center(
              // จัดรูปภาพให้ตรงกลาง
              child: Image.network(
                imageUrl,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              productName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center, // ข้อความชิดกลาง
            ),
            SizedBox(height: 8), // ระยะห่างระหว่างชื่อสินค้าและราคา
            Text(
              price,
              style: TextStyle(
                color: const Color.fromARGB(255, 216, 90, 32),
                fontSize: 16,
              ),
              textAlign: TextAlign.center, // ข้อความชิดกลาง
            ),
          ],
        ),
      ),
    );
  }
}
