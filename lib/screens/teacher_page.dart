import 'package:exam_portal/screens/class_page.dart';
import 'package:exam_portal/screens/home.dart';
import 'package:exam_portal/screens/main_drawer.dart';
import 'package:flutter/material.dart';
class TeacherPage extends StatelessWidget {

  Widget classButton(BuildContext context,int num){
    return TextButton(onPressed: (){Navigator.pushNamed(context, '/ClassPage');}, child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text('Class $num'),
    ));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Teacher\'s dashboard'),centerTitle: true,),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            classButton(context, 1),
            classButton(context, 2),
            classButton(context, 3),
            classButton(context, 4),
            classButton(context, 5),
            classButton(context, 6),
            classButton(context, 7),
            classButton(context, 8),
            classButton(context, 9),
            classButton(context, 10),
            classButton(context, 11),
            classButton(context, 12),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home()));},child: Icon(Icons.home),),
    );
  }
}
