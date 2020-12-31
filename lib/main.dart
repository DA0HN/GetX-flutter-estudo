import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_estudo_api/home/recovered_view.dart';

import 'home/index.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeView()),
        GetPage(name: '/recovered', page: () => RecoveredView())
      ],
    ),
  );
}
