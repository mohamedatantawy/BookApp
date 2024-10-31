import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product/Features/Splash/data/presentation/View/splashView.dart';
import 'package:product/constants.dart';

void main() {
  runApp(const Bookapp());
}

class Bookapp extends StatelessWidget {
  const Bookapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimaycolor),
      home: const Splashview(),
    );
  }
}
