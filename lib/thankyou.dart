
import 'package:flutter/material.dart';
import 'package:mydemo/main.dart';

class Thankyou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                "THANK YOU", style: TextStyle(fontSize: 75),),

            ),


            Padding(padding: EdgeInsets.only(bottom: 50)),
            Text("Code is Under maintenance",style: TextStyle(fontSize: 60),),
                ]
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
            onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>MyApp()
          ));
        }
        ),
      ),
    );
  }


}




