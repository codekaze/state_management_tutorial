import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial/home/view/home_view.dart';
import 'package:tutorial/panic/panic.dart';
import 'package:tutorial/panic/stateless_panic.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    home: StatelessPanicView(),
  ));
}
