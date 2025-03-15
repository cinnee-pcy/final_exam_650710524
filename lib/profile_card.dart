import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String ig,name, studentID, email, university, image;
  const ProfileCard(
      {super.key,
      required this.ig,
      required this.name,
      required this.studentID,
      required this.email,
      required this.university,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Color.fromARGB(255, 192, 53, 97),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: ClipOval(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(ig,
                    style:
                        const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name,
                    style:
                        const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                const SizedBox(
                  width: 10,
                ),
                Text(studentID,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 10,),
                Text(email,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.school,color: Colors.blueGrey,
                ),
                const SizedBox(width: 10,),
                Text(university,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
