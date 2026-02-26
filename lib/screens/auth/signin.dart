import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue.shade50,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [          
          Center(child: Text("sign in", style: TextStyle(
            fontSize: 30, 
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade900
            ),))  ,

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:  20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.shade900,
                      width: 0.7
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.shade900,
                      width: 0.7
                    )
                  ),
                ),
              ),
            ),
        ],

      ),
      );
  }
}
