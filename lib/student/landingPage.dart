import 'package:flutter/material.dart';
import 'package:hostel/Student/apply_Complaints.dart';
import 'package:hostel/Student/apply_Outing.dart';
import 'package:hostel/Student/ProfilePage.dart';
import 'package:hostel/Student/Reset_Password.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  void _openProfilePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 115, 182, 237),
        elevation: 0,
        title: Text('USN'),
        leading: IconButton(
          onPressed: _openDrawer,
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: _openProfilePage,
            icon: const Icon(
              Icons.person,
              color: Colors.black,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 115, 182, 237),
              ),
              child: Text(
                'Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('View Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.pending_actions),
              title: const Text('Apply Outing'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ApplyOuting()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Apply Complaints'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Apply_Complaints()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.password),
              title: const Text('Reset Password'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Reset_Password()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout_rounded),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                'VISION',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 320,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 169, 208, 239),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const Text(
                  '“Transformative education by pursuing excellence in Engineering and Management through enhancing skills to meet the evolving needs of the community”',
                ),
              ),
              SizedBox(height: 15),
              Text(
                'MISSION',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 320,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 169, 208, 239),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1. To bestow quality technical education to imbibe knowledge, creativity and ethos to students community.',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '2. To inculcate the best engineering practices through transformative education.',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '3. To develop a knowledgeable individual for a dynamic industrial scenario.',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '4. To inculcate research, entrepreneurial skills and human values in order to cater to the needs of society.',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
