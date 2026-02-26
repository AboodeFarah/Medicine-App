import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  20.0),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [          
            Center(child: Text("sign in", style: TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900
              ),))  ,
        
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.blue.shade900,),
                  border: InputBorder.none,
                  hintText: "Email",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password, color: Colors.blue.shade600,),
                  border: InputBorder.none,
                  
                ),
              )
          ],
        
        ),
      ),
      );
  }
}
