
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
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: const Text(
                "THANK YOU !", style: TextStyle(fontSize: 75),),

            ),


            const Padding(padding: EdgeInsets.only(bottom: 50)),
            const Text("Code is Under maintenance",style: TextStyle(fontSize: 60),),
                ]
        ),

        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.home),
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




