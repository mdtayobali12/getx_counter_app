import 'package:get/get.dart';

// class CounterController{
//   RxInt count = 0.obs ;//Reactive approach
//   void increment(){
//     count++;
//   }
// }

class CounterController extends GetxController{
  int count = 0;
 void increment(){
   count++;
   update();
 }
}