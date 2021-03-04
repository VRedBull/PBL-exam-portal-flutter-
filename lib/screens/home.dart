import 'package:exam_portal/screens/teacher_page.dart';
import 'package:flutter/material.dart';
import 'package:exam_portal/screens/teacher_page.dart';
import 'package:exam_portal/screens/student_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Welcome to Exam Portal!!',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.w100, color: Colors.white),
            ),
          ),
          Divider(
            height: 100,
            indent: 40,
            endIndent: 40,
            color: Colors.white,
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Login as a ...',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100, color: Colors.white),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TeacherPage()));
              },
              icon: Icon(Icons.person),
              label: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Teacher'),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => StudentPage()));
              },
              icon: Icon(Icons.school),
              label: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Student'),
              )),
        ],
      )),
    );
  }
}
