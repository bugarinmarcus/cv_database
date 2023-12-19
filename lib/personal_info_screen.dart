import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Information"),
        backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
      ),
      body: Container(
        color: const Color.fromARGB(255, 72, 81, 90),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildInfoText("Name: Marc Angelo DV. Bugarin"),
            _buildInfoText("Age: 21 years old"),
            _buildInfoText("Address: Basista, Pangasinan"),
            _buildInfoText("Place of Birth: Urbiztondo, Pangasinan"),
            _buildInfoText("Citizenship: Filipino"),
            _buildInfoText("Religion: Roman Catholic"),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoText(String text) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800], // Set background color
        borderRadius: BorderRadius.circular(10), // Set border radius
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
