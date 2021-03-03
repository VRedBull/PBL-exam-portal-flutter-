import 'package:flutter/material.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

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
                "Teacher Name",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Teacher at Navodaya Vidyalaya",
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
          Icons.grade,
          color: Colors.blueAccent,
        ),
        title: Text("Statistics"),
      ),

      ListTile(
        onTap: () {

        },
        leading: Icon(
          Icons.phone,
          color: Colors.red,
        ),
        title: Text("Phone no."),
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