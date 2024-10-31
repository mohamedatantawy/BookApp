import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product/Features/Splash/data/presentation/View/splashView.dart';

void main() {
  runApp(const Bookapp());
}
class Bookapp extends StatelessWidget {
  const Bookapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Splashview(),
    );
  }
}