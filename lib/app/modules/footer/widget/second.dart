import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class SecondPage extends GetView<HomeController> {
  const SecondPage({super.key});

  get buttonColor => null;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Second page',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 107, 82, 7)),
          onPressed: () {
            controller.setHomeWidget('third');
          },
          child: const Text(
            'Go to 3rd page',
            style: TextStyle(fontSize: 17),
          ),
        )
      ],
    ));
  }
}
