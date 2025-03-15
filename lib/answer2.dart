import 'package:flutter/material.dart';

class Answer2 extends StatefulWidget {
  const Answer2({super.key});

  @override
  State<Answer2> createState() => _Answer2State();
}

class _Answer2State extends State<Answer2> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _weight = TextEditingController();
  int w = 0;
  String? _selectedDistance;
  String? _express;
  bool _Checked20 = false;
  bool _Checked50 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("คำนวณค่าจัดส่ง"),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "น้ำหนักสินค้า (กก.):",
              style: TextStyle(fontSize: 16),
            ),
            TextFormField(
              controller: _weight,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  labelText: 'น้ำหนักสินค้า'),
              validator: (value) {
                if (value!.isEmpty) {
                  return '*กรุณากรอกน้ำหนักของสินค้า!';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("เลือกระยะทาง:", style: TextStyle(fontSize: 16)),
            DropdownButton<String>(
              value: _selectedDistance,
              items: ['ในเมือง', 'ต่างจังหวัด', 'ต่างประเทศ']
                  .map((item) =>
                      DropdownMenuItem(value: item, child: Text(item)))
                  .toList(),
              onChanged: (value) {
                _selectedDistance = value;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("บริการเสริม:", style: TextStyle(fontSize: 16)),
            CheckboxListTile(
              title: const Text('แพ็คกิ้งพิเศษ: +20 บาท'),
              value: _Checked20,
              onChanged: (value) {
                setState(() {
                  _Checked20 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('ประกันพัสดุ: +50 บาท'),
              value: _Checked50,
              onChanged: (value) {
                setState(() {
                  _Checked50 = value!;
                });
              },
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("เลือกความเร่งด่วน:", style: TextStyle(fontSize: 16)),
            RadioListTile(
              title: const Text('ปกติ'),
              value: 'ปกติ',
              groupValue: _express,
              onChanged: (value) {
                setState(() {
                  _express = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text('ด่วน'),
              value: 'ด่วน',
              groupValue: _express,
              onChanged: (value) {
                setState(() {
                  _express = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text('พิเศษ'),
              value: 'พิเศษ',
              groupValue: _express,
              onChanged: (value) {
                setState(() {
                  _express = value.toString();
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {}
                    },
                    child: const Text('คำนวณราคา'))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  "ค่าจัดส่งทั้งหมด: ฿57.5",
                  style: TextStyle(backgroundColor: Colors.blue, fontSize: 20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
