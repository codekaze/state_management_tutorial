import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial/home/view/home_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    home: HomeView(),
  ));
}
