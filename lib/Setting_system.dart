import 'package:counter_app/profilescreen.dart';
import 'package:counter_app/statelogic/contur_contollar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingSystem extends StatefulWidget {
  const SettingSystem({super.key});

  @override
  State<SettingSystem> createState() => _SettingSystemState();
}

class _SettingSystemState extends State<SettingSystem> {
  final CounterController _counterController =Get.put(CounterController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: const Text("Setting"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              builder: (counterController){
               return Text('${_counterController.count}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              );

              }
            ),

            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacement(context, MaterialPageRoute(
                //     builder: (context) => const ProfileScreen(),
                //   ),
                // );
                Get.off(()=>const ProfileScreen());
              },
              child: const Text('Go to profile'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Get.back();
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),

    );
  }
}
