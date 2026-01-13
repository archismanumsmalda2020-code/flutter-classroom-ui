import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Classroom"),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text("1", style: TextStyle(color: Colors.white)),
          ),
          SizedBox(width: 10),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 4)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "This week",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "No work coming up immediately",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            courseCard(
              title: "xxxxxx",
              subject: "xxxxxx",
              teacher: "xxxxxx",
              color: Colors.blue,
            ),

            courseCard(
              title: "xxxxxx",
              subject: "xxxxxx",
              teacher: "xxxxxx",
              color: Colors.indigo,
            ),
            courseCard(
              title: "xxxxxx",
              subject: "xxxxxx",
              teacher: "xxxxxx",
              color: Colors.black87,
            ),

            courseCard(
              title: "xxxxxx",
              subject: "xxxxxx",
              teacher: "xxxxxx",
              color: Colors.green,
            ),
            courseCard(
              title: "xxxxxx",
              subject: "xxxxxx",
              teacher: "xxxxxx",
              color: const Color.fromARGB(255, 218, 84, 17),
            ),
          ],
        ),
      ),
    );
  }

  Widget courseCard({
    required String title,
    required String subject,
    required String teacher,
    required Color color,
  }) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(16),
      height: 130,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6),
          Text(subject, style: TextStyle(color: Colors.white70)),
          Spacer(),
          Text(teacher, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
