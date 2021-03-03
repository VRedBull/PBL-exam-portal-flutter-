import 'package:exam_portal/screens/student_main_drawer.dart';
import 'package:flutter/material.dart';

import 'home.dart';
class StudentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student\'s Dashboard'),
        centerTitle: true,
      ),
      drawer: Drawer(
  child: StudentMainDrawer(),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          subject('Mathematics','https://images.theconversation.com/files/139426/original/image-20160927-14593-1rf92dt.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop'),
          subject('Science','https://img.freepik.com/free-photo/multi-colored-dust-splash-black-background-painted-holi_36326-3565.jpg?size=626&ext=jpg'),
          subject('English','https://t4.ftcdn.net/jpg/01/71/57/89/360_F_171578974_eNhE6sEpc6jsK6Py7IxhTbIZZQ7878Wb.jpg'),
          subject('Social Studies','https://ssir.org/images/blog/SERIES-civil-society-Dan-Cardinali-equity-power-sharing592x333.jpg'),
          subject('Hindi','https://thumbs.dreamstime.com/b/flag-india-indian-national-background-43514001.jpg'),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home()));},child: Icon(Icons.home),),
    );
  }

  Widget subject(String sub, String img) => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: NetworkImage(
            '$img',
          ),
          // colorFilter: ColorFilters.greyscale,
          child: InkWell(
            onTap: () {},
          ),
          height: 180,
          fit: BoxFit.cover,
        ),
        Text(
          '$sub',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ],
    ),
  );
}
