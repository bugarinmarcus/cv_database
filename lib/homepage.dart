import 'package:flutter/material.dart';
import 'personal_info_screen.dart';
import 'educational_background.dart';
import 'skills.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Curriculum Vitae",
    home: Firstpage(),
  ));
}

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 72, 81, 90),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curriculum Vitae',
          ),
        ),
        backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/avatar.jpg',
                ),
                radius: 60.0,
              ),
            ),
            const Divider(height: 90, color: Color.fromRGBO(250, 251, 252, 1)),
            const Text(
              "Name:",
              style: TextStyle(
                color: Color.fromRGBO(247, 249, 250, 1),
              ),
            ),
            const Text(
              "Marc Angelo Bugarin",
              style: TextStyle(
                  color: Color.fromRGBO(33, 150, 243, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            const Text(
              "Position:",
              style: TextStyle(
                color: Color.fromRGBO(247, 249, 250, 1),
              ),
            ),
            const Text(
              "IT Technician",
              style: TextStyle(
                  color: Color.fromRGBO(33, 150, 243, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            const Row(
              children: [
                Icon(Icons.mail, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "bugarinmarc@gmail.com",
                  style: TextStyle(color: Color.fromRGBO(33, 150, 243, 1)),
                )
              ],
            ),
            const Row(
              children: [
                Icon(Icons.call, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "09063641591",
                  style: TextStyle(color: Color.fromRGBO(33, 150, 243, 1)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PersonalInfoScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.info, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EducationalBackgroundScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.school, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SkillsScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.settings, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
