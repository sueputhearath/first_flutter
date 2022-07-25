import 'package:get/get.dart';
import 'package:getx_learning_v2/controllers/counter_controller.dart';
import 'package:http/http.dart';

class AppController extends GetxController {
  int counter = 0;
  var counter1 = 0.obs;
  final countercontroller = Get.put(CounterController());

  // create method for  actionbutton
  void incresment() {
    counter++;
    counter1++;
    countercontroller.counter1++;
  }
}
