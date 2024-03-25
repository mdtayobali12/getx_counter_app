import 'package:counter_app/Setting_system.dart';
import 'package:counter_app/profilescreen.dart';
import 'package:counter_app/statelogic/contur_contollar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({super.key});

  @override
  State<HomePagee> createState() => _HomePageeState();
}


class _HomePageeState extends State<HomePagee> {
  final CounterController _counterController =Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.red,
         foregroundColor: Colors.white,
         title: const Text("CounterApp"),
       ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              builder:(_counterController)=> Text(
                "${_counterController.count}",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(onPressed:(){
              // Navigator.push(context, MaterialPageRoute(
              //   builder: (context) => const ProfileScreen(),));
              Get.to(()=> const ProfileScreen());
            }, child:const Text('Go to Profile')),
            ElevatedButton(onPressed:(){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const SettingSystem(),
                  //   ),
                  // );

              Get.to(()=>const SettingSystem());
                }, child:const Text('Go to setting')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        onPressed: (){
          _counterController.increment();
          },
        child: const Text("add"),
      ),
    );
  }
}
