import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skills"),
        backgroundColor: Colors.blue, // Set app bar color
      ),
      body: Container(
        color: Color.fromARGB(255, 72, 81, 90),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildSkillText("Computer Skills"),
            _buildSkillText("Adaptability"),
            _buildSkillText("Decision Making Skills"),
            _buildSkillText("Resourcefulness"),
            _buildSkillText("Leadership"),
            _buildSkillText("Creativity"),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillText(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          Icons.circle,
          color: const Color.fromRGBO(33, 150, 243, 1),
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
