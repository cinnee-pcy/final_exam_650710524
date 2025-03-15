import 'package:flutter/material.dart';

class Answer1 extends StatelessWidget {
  const Answer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("โปรไฟล์ผู้ใช้"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            CircleAvatar(
              radius: 50,
              child: ClipOval(
                child: Image.asset(
                  "/Users/cinnee_pcy/StudioProjects/final_exam_650710524/assets/image/imagetest.jpg",
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ชื่อผู้ใช้: Cinnee",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "อีเมล: sincin46@gmail.com",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text("การตั้งค่า"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.lock, color: Colors.blue),
              title: Text("เปลี่ยนรหัสผ่าน"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.question_mark, color: Colors.blue),
              title: Text("ความเป็นส่วนตัว"),
              onTap: () {},
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("แก้ไขโปรไฟล์")),
                  );
                },
                child: Text("แก้ไขโปรไฟล์")),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("ออกจากระบบ")),
                  );
                },
                child: Text("ออกจากระบบ")),
          ]),
        )));
  }
}
