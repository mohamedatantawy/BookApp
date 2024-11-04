import 'package:flutter/material.dart';
import 'package:product/Features/Search/presentation/Views/widgets/SearchView_body.dart';

class Serachview extends StatelessWidget {
  const Serachview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchviewBody(),
      ),
    );
  }
}
