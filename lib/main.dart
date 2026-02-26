import 'package:flutter/material.dart';
import 'package:medicineapp/screens/auth/signin.dart';

void main() {
  runApp(const MedicineApp());
}

class MedicineApp extends StatelessWidget {
  const MedicineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
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
        )
      ),
      home: Signin() ,
    ); 

  }

}