import 'package:flutter/material.dart';

class StudentExamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student\'s Dashboard'),),
      backgroundColor: Colors.teal[400],
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text('Exam Instructions', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100, color: Colors.white),),
              ),
              Divider(height: 100,indent: 40,endIndent: 40,color: Colors.white,),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text('1. Arrive at the examination venue at least 15 minutes before the start of the examination / 35 minutes before a digital examination.\n2. You must only use paper handed out at the examination venue.\n3. Your paper must be written with a black or blue ballpoint pen\n4. At digital examinations, you write your answer directly in the program.\n5. You may work on your exam paper until the time allotted for the examination expires.', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100, color: Colors.white),),
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.person), label: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Start Exam'),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.school), label: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Submit'),
                    )),
                  ),
                ],
              ),
              // SizedBox(height: 20,),

            ],
          ) ),
    );
  }
}
