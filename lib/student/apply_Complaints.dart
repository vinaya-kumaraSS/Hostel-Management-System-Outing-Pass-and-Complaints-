import 'package:flutter/material.dart';

class Apply_Complaints extends StatelessWidget {
  // Controller for the complaint text field
  final TextEditingController complaintController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply Complaints'),
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 115, 182, 237),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Block',
                labelText: 'Block',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Room No',
                labelText: 'Room No',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Issue',
                labelText: 'Issue',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button press
                // Process or submit the complaint as needed
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 115, 182, 237),
              ),
              child: Text(
                'Submit',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
