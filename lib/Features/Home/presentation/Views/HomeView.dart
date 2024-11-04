import 'package:flutter/material.dart';
import 'package:product/Features/Home/presentation/Views/widgets/homeView_body.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeviewBody(),
    );
  }
}
