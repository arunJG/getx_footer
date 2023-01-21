import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class ThirdPage extends GetView<HomeController> {
  const ThirdPage({super.key});

  get buttonColor => null;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Third page',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 107, 82, 7)),
          onPressed: () {
            controller.setHomeWidget('first');
          },
          child: const Text(
            'Go to 1st page',
            style: TextStyle(fontSize: 17),
          ),
        )
      ],
    ));
  }
}
