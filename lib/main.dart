import 'package:exam_portal/screens/class_page.dart';
import 'package:exam_portal/screens/student_page.dart';
import 'package:exam_portal/screens/teacher_page.dart';
import 'package:flutter/material.dart';
import 'package:exam_portal/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TeacherPage(),
      routes: {
        '/StudentPage':(context)=>StudentPage(),
        '/TeacherPage':(context)=>TeacherPage(),
        '/ClassPage': (context)=>ClassPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
