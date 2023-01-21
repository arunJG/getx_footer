import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_footer/app/modules/footer/widget/profile.dart';
import 'controller/controller.dart';
import 'widget/first.dart';
import 'widget/second.dart';
import 'widget/third.dart';

// List<Widget> pages = [firstPage(), SecondPage()];

Map pages = {
  'first': const FirstPage(),
  'second': const SecondPage(),
  'third': const ThirdPage()
};

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(title: const Text('Getx')),
          body: IndexedStack(
            index: controller.tabIndex.value,
            children: [pages[controller.homewidget.value], const ProfilePage()],
          ),
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) => controller.setTabIndex(value),
              currentIndex: controller.tabIndex.value,
              selectedItemColor: Color.fromARGB(255, 17, 75, 122),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile')
              ]),
        ));
  }
}
