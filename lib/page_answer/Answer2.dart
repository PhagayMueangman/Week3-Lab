import 'package:flutter/material.dart';

void main() {
  runApp(Answer2());
}

class Answer2 extends StatelessWidget {
  final List<Map<String, dynamic>> posts = [
    {
      'username': 'Phaguy Mueangman',
      'time': '24 ธ.ค. 2022',
      'text': 'คืนนี้ ตี 2 อย่าลืมดู ‘ฝนดาวตก’ แรกของปี 68 ทั่วประเทศ | The Bangkok Insight | LINE TODAY',
      'image': 'https://today-obs.line-scdn.net/0hGnTWrcj6GEFpLglRux5nFlF4FDBaSAJIS0pTIkgpQ3JDAloQXR1LIhkmQ20UF1lFSU9Rd0krFXgQH14TVA/w644',
      'likeCount': 123,
      'commentCount': 45,
      'shareCount': 67,
    },
    {
      'username': 'Aroon Jang',
      'time': '25 ธ.ค. 2022',
      'text': 'วันนี้อากาศดีมาก ออกไปเดินเล่นกันนะครับทุกคน!',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHtJOaAjTifikhFA6TNS9jElygLe4FbP0yGA&s',
      'likeCount': 150,
      'commentCount': 30,
      'shareCount': 50,
    },
    {
      'username': 'Nina Somchai',
      'time': '26 ธ.ค. 2022',
      'text': 'ใครพร้อมไปเที่ยวหาดใหญ่ไหมคะ? เริ่มวางแผนกัน!',
      'image': 'https://lh3.googleusercontent.com/proxy/i8OYs69SpyIKEfnkkijBgGrGQPZS3NwH13V4FHsK1LxNNOxCf7M-_IcO1jdSNgrmjngSW4jdHjmZT54QLaoFnaVcLmtsQDtqCwK9nSh_lpitr712lqUv4ZLCO5VvcjSO1Cxe7QNPnAXR83ddmjq6gRo1a5hyGIZ-a09YhdC-oD5YkCu8QZkHtBIWQY8BoltM0oGOFG6fNW0OIyY857WsDOmfhUVaDM9qn8ReimnN8xi73KrqDWD2an-ASWjHhQurjQ5O46LtC4zISEI3Ou3N77p53rwTHvsRLsfcfZE20lt9aC6leQ_FBDxr9LU3mAQH',
      'likeCount': 200,
      'commentCount': 70,
      'shareCount': 100,
    },
    {
      'username': 'Anan Suksai',
      'time': '27 ธ.ค. 2022',
      'text': 'ฝนตกหนักระวังอุบัติเหตุกันนะครับ',
      'image': 'https://www.tqm.co.th/gallery/2558.jpg',
      'likeCount': 75,
      'commentCount': 10,
      'shareCount': 20,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Social Media Posts'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 249, 157, 20),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // กลับไปหน้าหลัก
            },
          ),
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            var post = posts[index];
            return PostWidget(post: post);
          },
        ),
      ),
    );
  }
}

class PostWidget extends StatefulWidget {
  final Map<String, dynamic> post;

  PostWidget({required this.post});

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  late int likeCount;
  late bool isLiked;

  @override
  void initState() {
    super.initState();
    likeCount = widget.post['likeCount']; // ใช้ค่าจำนวนถูกใจจากข้อมูล
    isLiked = false; // กำหนดสถานะเริ่มต้นว่าไม่ได้ถูกใจ
  }

  void _toggleLike() {
    setState(() {
      if (isLiked) {
        likeCount--; // ถ้ากดแล้วเป็นการยกเลิกการถูกใจ
      } else {
        likeCount++; // ถ้ายังไม่ได้กดก็เพิ่มจำนวนถูกใจ
      }
      isLiked = !isLiked; // สลับสถานะของการถูกใจ
    });
  }

  void _showCommentMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ไม่สามารถแสดงความคิดเห็นได้'),
          content: Text('เนื่องจากผู้โพสต์ปิดการแสดงความเห็นอยู่'),
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

  void _showShareMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('ขณะนี้ไม่สามารถแชร์ได้ เนื่องจากผู้โพสต์ปรับเปลี่ยนความเป็นส่วนตัว')),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ไม่สามารถแชร์ได้'),
          content: Text('เนื่องจากผู้โพสต์ปรับเปลี่ยนความเป็นส่วนตัว'),
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // แถวแรก: รูปโปรไฟล์, ชื่อผู้ใช้, เวลาโพสต์
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: NetworkImage('https://cdn.fs.teachablecdn.com/Js2HhrLpSyuVRjeIMjPB'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.post['username'], style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(widget.post['time'], style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          // แถวที่สอง: ข้อความก่อนรูปภาพ
          Text(
            widget.post['text'],
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          // แถวที่สาม: รูปภาพโพสต์
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.post['image']),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
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
                        icon: Icon(
                          isLiked ? Icons.thumb_up_alt_rounded : Icons.thumb_up,
                          color: isLiked ? Colors.blue : Colors.grey,
                        ),
                        onPressed: _toggleLike,
                      ),
                      SizedBox(width: 5),
                      Text('$likeCount ถูกใจ'),
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
                        onPressed: () => _showCommentMessage(context),
                      ),
                      SizedBox(width: 5),
                      Text('${widget.post['commentCount']} ความคิดเห็น'),
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
                        onPressed: () => _showShareMessage(context),
                      ),
                      SizedBox(width: 5),
                      Text('${widget.post['shareCount']} แชร์'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
