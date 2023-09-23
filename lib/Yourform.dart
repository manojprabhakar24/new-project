import 'package:flutter/material.dart';
import 'package:mydemo/thankyou.dart';

class Yourform extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          const Text("signup Form", style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold),),
          Padding(padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: _emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Give Value';
                }
                return null;
              },
              decoration: const InputDecoration(
                  hintText: ("your Email")
              ),
            ),
          ),

          Padding(padding: const EdgeInsets.all(20),
            child: TextFormField(

              controller: _passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Give Value';
                }
                return null;
              },
              decoration: const InputDecoration(
                  hintText: ("Password")
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Thankyou()
              ));
            },
            child: Text('Login'),
          ),
        ],
      ),
    );




  }
}