import 'package:flutter/material.dart';
import 'package:hostel/Admin/view_complaints.dart';
import 'package:hostel/Admin/view_outing.dart';

class ManagerLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 115, 182, 237),
        elevation: 0,
        title: Text('Admin'),
        actions: <Widget>[
          Visibility(
            visible: true, // Adjust visibility based on your logic
            child: Image.network(
              'https://alvas.org/wp-content/uploads/2019/06/logo-258x300.png',
              fit: BoxFit.contain,
              width: 100.0,
              height: 100.0,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              "Total Statistics",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255, 115, 182, 237),
              ),
              margin: EdgeInsets.all(20.0),
              height: 140,
              child: Center(
                child: Text(
                  "000000", // Placeholder text
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text(
              "Explore",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewComplaints()),
                      );
                    },
                    child: Container(
                      height: 100,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 115, 182, 237),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.pending_actions,
                            size: 40,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "View Complaints",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewOuting()),
                      );
                    },
                    child: Container(
                      height: 100,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 115, 182, 237),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.book,
                            size: 40,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "View Outing",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
