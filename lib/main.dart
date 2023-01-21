import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'app/modules/footer/binding/bindings.dart';
import 'app/modules/footer/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialBinding: HomeBinding(),
    );
  }
}
