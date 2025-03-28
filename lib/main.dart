import 'package:final_exam_650710524/answer1.dart';
import 'package:final_exam_650710524/answer2.dart';
import 'package:final_exam_650710524/profile_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Initial theme mode is light

  // Toggle the theme mode

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title Demo',
      home: Answer2(), //Answer1()
    );
  }
}

// class MyWidgetPro extends StatelessWidget {
//   const MyWidgetPro({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 192, 53, 97),
//         title: Text(
//           'Profile Card',
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//       ),
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ProfileCard(
//               ig: 'CINNEE_PCY',
//               name: 'Ms. Kawisara Prasitnui',
//               email: 'sincin46@gmail.com',
//               university: 'Silpakorn University',
//               image:
//                   '/Users/cinnee_pcy/StudioProjects/week6/assets/image/imagetest.jpg',
//               study: 'Computer Science Student',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
