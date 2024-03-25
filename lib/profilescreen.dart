import 'package:counter_app/homepage.dart';
import 'package:counter_app/statelogic/contur_contollar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //   () => Text(
            //     "${_counterController.count}",
            //     style: const TextStyle(
            //       fontSize: 24,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),

            GetBuilder<CounterController>(
              builder: (controller) {
                return Text("${controller.count}");
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                //       builder: (context) => const HomePagee(),
                //     ),
                //     (route) => false);

                Get.offAll(() => const HomePagee());
              },
              child: const Text(
                'Go to Home',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.showSnackbar(
                //   const GetSnackBar(
                //     title: "Texting",
                //     message: "Testing Getx snackbar",
                //   ),
                // );

                Get.dialog(
                  const AlertDialog(title: Text("Testing Dialog"),)
                );
              },
              child: const Text("Show Toast"),
            ),
            ElevatedButton(
                onPressed: () {
                  _counterController.increment();
                },
                child: const Text("increment"))
          ],
        ),
      ),
    );
  }
}
