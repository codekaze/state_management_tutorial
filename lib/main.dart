import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial/panic/panic.dart';
import 'package:tutorial/tugas/tugas1.dart';
import 'cart/cart.dart';
import 'function/function.dart';
import 'home/view/home_view.dart';
import 'list/people_list.dart';
import 'login.dart';
import 'looping/looping1.dart';
import 'whatsapp/select_contact.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    home: PoepleListView(),
  ));
}
