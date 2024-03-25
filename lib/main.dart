import 'package:counter_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePagee(),
    );
  }
}
