import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_learning_v2/controllers/app_controller.dart';
import 'package:getx_learning_v2/controllers/counter_controller.dart';

class HomeScreen extends GetView<AppController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Get Builder'),
          //getBulder

          GetBuilder(
            init: AppController(),
            builder: (AppController state) {
              return Center(
                  child: Text(state.counter.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 26)));
            },
          ),
          const Text(' Obx'),

          //Obx

          Obx(() => Text(
                controller.counter1.toString(),
                style: TextStyle(fontSize: 30),
              )),

          const Text('Getx1'),
          GetX<AppController>(
              init: AppController(),
              builder: (controller) {
                return Text(
                  controller.counter1.toString(),
                  style: TextStyle(fontSize: 30),
                );
              }),

          Text('Getx2'),
          GetX<CounterController>(
              init: CounterController(),
              builder: (controller) {
                return Text(
                  controller.counter1.toString(),
                  style: TextStyle(fontSize: 30),
                );
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          //Call controller use for this actionbutton
          final controller = Get.put(AppController());
          controller.incresment();
          controller.update();
        },
      ),
    );
  }
}
