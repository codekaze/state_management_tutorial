import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial/panic/panic.dart';
import 'package:tutorial/tugas/tugas1.dart';
import 'cart/cart.dart';
import 'home/view/home_view.dart';
import 'login.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    home: CartView(),
  ));
}
