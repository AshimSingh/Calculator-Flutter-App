import 'package:calculator/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      
    );
  }
}