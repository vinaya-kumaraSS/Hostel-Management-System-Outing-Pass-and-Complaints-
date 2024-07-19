import 'package:flutter/material.dart';

class ViewOuting extends StatefulWidget {
  @override
  _ViewOutingState createState() => _ViewOutingState();
}

class _ViewOutingState extends State<ViewOuting> {
  late Future<Outing?> _outingFuture;

  @override
  void initState() {
    super.initState();
    // Initiate fetching of outing details
    _outingFuture = fetchOutingDetails();
  }

  Future<Outing?> fetchOutingDetails() async {
    // Simulate fetching data from a backend (replace with actual fetch logic)
    await Future.delayed(Duration(seconds: 2)); // Simulating delay

    // Replace this with your actual backend integration logic
    // Example of fetching hardcoded data (replace with API call or database query)
    return Outing(
      studentId: 'John Doe',
      block: 'A12345',
      roomNo: '101',
    );
  }

  @override
  Widget build(BuildContext context) {
    const tablePadding = EdgeInsets.all(15);

    return Scaffold(
      appBar: AppBar(
        title: const Text('View Outing Details'),
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 115, 182, 237),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: FutureBuilder<Outing?>(
        future: _outingFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('No data available'));
          }

          final outing = snapshot.data!;

          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 18.0,
                    left: 18,
                    right: 18,
                    bottom: 50,
                  ),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: Colors.grey),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Table(
                              columnWidths: const {
                                0: FixedColumnWidth(120),
                                1: FlexColumnWidth(),
                              },
                              border: TableBorder.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              children: [
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: tablePadding,
                                      child: const Center(
                                        child: Text(
                                          'studentId',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: tablePadding,
                                      child: Text(
                                        outing.studentId,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: tablePadding,
                                      child: const Text(
                                        'ID No.',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Padding(
                                      padding: tablePadding,
                                      child: Text(
                                        outing.block,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: tablePadding,
                                      child: const Text(
                                        'Room No.',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Padding(
                                      padding: tablePadding,
                                      child: Text(
                                        outing.roomNo,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Row with only the Approve button
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context); // Handle Approve action
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green[400],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            margin: const EdgeInsets.all(1),
                            height: 50,
                            child: const Center(
                              child: Text(
                                'Approve',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Outing {
  final String studentId;
  final String block;
  final String roomNo;

  Outing({
    required this.studentId,
    required this.block,
    required this.roomNo,
  });
}
