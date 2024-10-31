import 'package:flutter/material.dart';
import 'package:product/core/utils/assets.dart';

class SplashviewBody extends StatelessWidget {
  const SplashviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
     const   Text('Read free books',
        textAlign: TextAlign.center,),
      ],
    );
  }
}
