import 'package:flutter/material.dart';

class EducationalBackgroundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Educational Background"),
        backgroundColor: Colors.blue, // Set app bar color
      ),
      body: Container(
        color: Color.fromARGB(255, 72, 81, 90),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildSection("Tertiary Education:", [
              "Bachelor of Science in Information Technology",
              "The Philippine College of Science and Technology (PhilCST)",
              "Graduation Year: 2024",
            ]),
            _buildSection("Secondary Education:", [
              "Basista National High School",
              "Graduation Year: 2020",
            ]),
            _buildSection("Primary Education:", [
              "Basista Central Elementary School",
              "Graduation Year: 2014",
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<String> content) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: content.map((item) => _buildInfoText(item)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoText(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
