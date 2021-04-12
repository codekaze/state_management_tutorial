import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial/home/controller/home_controller.dart';

class HomeView extends StatelessWidget {
  final controlller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) {
        return Scaffold();
      },
    );
  }
}
