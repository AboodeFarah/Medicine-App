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
      home: Signin() ,
    ); 

  }

}