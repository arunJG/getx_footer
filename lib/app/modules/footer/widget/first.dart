import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class FirstPage extends GetView<HomeController> {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'First page',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 107, 82, 7)),
          onPressed: () {
            // Updating the state of homeWidget will change the
            // state of home view

            controller.setHomeWidget('second');
          },
          child: const Text(
            'Go to 2nd page',
            style: TextStyle(fontSize: 17),
          ),
        )
      ],
    ));
  }
}
