import 'package:flutter/material.dart';


class StudentMainDrawer extends StatelessWidget {
  const StudentMainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(''),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Student Name",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Student at Navodaya Vidyalaya",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      //Now let's Add the button for the Menu
      //and let's copy that and modify it
      ListTile(
        onTap: () {

        },
        leading: Icon(
          Icons.school,
          color: Colors.blue,
        ),
        title: Text("Resources"),
      ),

      ListTile(
        onTap: () {

        },
        leading: Icon(
          Icons.book,
          color: Colors.black,
        ),
        title: Text("Books"),
      ),

      ListTile(
        onTap: () {

        },
        leading: Icon(
          Icons.exit_to_app,
          color: Colors.blueAccent,
        ),
        title: Text("Upcoming Exams"),
      ),

      ListTile(
        onTap: () {

        },
        leading: Icon(
          Icons.skip_previous,
          color: Colors.red,
        ),
        title: Text("Previous Exams"),
      ),

      ListTile(
        onTap: () {

        },
        leading: Icon(
          Icons.settings,
          color: Colors.green,
        ),
        title: Text("Settings"),
      ),
    ]);
  }

}