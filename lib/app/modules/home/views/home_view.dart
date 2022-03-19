import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => controller.resetData(),
              icon: const Icon(Icons.restore))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(
                '${controller.count}',
                style: const TextStyle(fontSize: 20),
              )),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => controller.increment(),
                  child: const Icon(Icons.add)),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () => controller.decrement(),
                  child: const Icon(Icons.remove)),
            ],
          )
        ],
      ),
    );
  }
}
